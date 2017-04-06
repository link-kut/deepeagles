package jips.kor.controller;

import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.S3ObjectInputStream;
import com.amazonaws.services.s3.transfer.TransferManager;
import com.amazonaws.util.IOUtils;
import jips.kor.SystemUtil;
import jips.kor.domain.CustomDate;
import jips.kor.domain.History;
import jips.kor.domain.Paper;
import jips.kor.repository.HistoryMapper;
import jips.kor.repository.PaperMapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLEncoder;

@Controller
@RequestMapping("/file/")
@Transactional
public class FileDownloadController {
    @Inject
    private PaperMapper paperMapper;

    @Inject
    private TransferManager transferManager;

    @Inject
    private HistoryMapper historyMapper;

    @Inject
    private SystemUtil systemUtil;

    @Inject
    private AmazonS3 amazonS3;

    @Value("${aws.s3.bucket}")
    private String bucket;

    @Value("${zoneId}")
    private String zoneId;

    @RequestMapping(value = "/down",
                    method = RequestMethod.GET,
                    produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
    public @ResponseBody ResponseEntity<byte[]> download(@RequestParam(value = "pn", required = false) int pn,
                                                         HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
        Paper paper = paperMapper.findByPaperDetail(pn);
        String referer = request.getHeader(HttpHeaders.REFERER);
        if (paper.getOf() == 0 && session.getAttribute("downhit-" + pn) == null && referer != null && referer.contains(String.format("q.jips?cp=pp&pn=%d", pn))) {
            session.setAttribute("downhit-" + pn, "ok");
            History recentHistory = historyMapper.findRecentHistoryByPn(pn);

            CustomDate customDateToday = systemUtil.getToday();
            CustomDate customDateRecent = new CustomDate(recentHistory.getYear(), recentHistory.getMonth(), recentHistory.getDate());

            if (customDateRecent.equals(customDateToday)) {
                recentHistory.setDownhit(recentHistory.getDownhit() + 1);
                historyMapper.update(recentHistory);
            } else {
                History newHistory = new History();
                newHistory.setYear(customDateToday.getYear());
                newHistory.setMonth(customDateToday.getMonth());
                newHistory.setDate(customDateToday.getDate());
                newHistory.setHit(recentHistory.getHit());
                newHistory.setDownhit(recentHistory.getDownhit() + 1);
                newHistory.setNum(pn);
                historyMapper.insert(newHistory);
            }
        }

        ResponseEntity<byte[]> responseEntity = null;

        if (paper != null) {
            responseEntity = this.download("JIPS_" + pn + ".pdf", "JIPS_" + pn + ".pdf");
            response.setContentType("application/pdf");
            return responseEntity;
        } else {
            response.sendError(412, "Wrong Access");
            return null;
        }
    }

    public ResponseEntity<byte[]> download(String key, String fileName) throws IOException {
        GetObjectRequest getObjectRequest = new GetObjectRequest(bucket, key);
        S3Object s3Object = transferManager.getAmazonS3Client().getObject(getObjectRequest);
        S3ObjectInputStream objectInputStream = s3Object.getObjectContent();
        String contentType = s3Object.getObjectMetadata().getContentType();
        byte[] bytes = IOUtils.toByteArray(objectInputStream);

        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.setContentType(new MediaType("application", "pdf"));
        httpHeaders.setContentLength(bytes.length);
        httpHeaders.setContentDispositionFormData("attachment", URLEncoder.encode(fileName, "utf-8"));

        return new ResponseEntity<>(bytes, httpHeaders, HttpStatus.OK);
    }
}