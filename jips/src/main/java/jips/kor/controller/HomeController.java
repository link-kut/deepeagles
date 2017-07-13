package jips.kor.controller;

import jips.kor.SystemUtil;
import jips.kor.domain.*;
import jips.kor.domain.statistics.country.AuthorCountries;
import jips.kor.domain.statistics.country.ReviewerCountries;
import jips.kor.repository.HistoryMapper;
import jips.kor.repository.PaperMapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/")
public class HomeController {
    @Inject
    private PaperMapper paperMapper;

    @Inject
    private HistoryMapper historyMapper;

    @Inject
    private SystemUtil systemUtil;

    @Value("${env.text}")
    private String env;

    @ModelAttribute("name")
    private String getName() {
        return "IamHomeControllerModelAttribute";
    }


    @RequestMapping
    public String home(Model model) {
        Date date = new Date();
        System.out.println("date = " + date.getTime());



        this.setSideModelAttributes(model);
        System.out.println("정상적으로 호출되었습니다.");
        model.addAttribute("features", paperMapper.findByFeatured());
        model.addAttribute("latest", paperMapper.findByLatest());
        model.addAttribute("cPage", "home");
        model.addAttribute("test","정상적으로 호출되었습니다.");

        /*************************************************************/
        /*  투수DB기록 테스트용 */
        List<Pitcher > p = historyMapper.findAll_pitcher();
        int pWin=0;
        int pLose=0;

        for(int i=0;i<p.size();i++)
        {
            if(p.get(i).getW() == 1){
                pWin+=1;
            }
            else{
                pLose+=1;
            }
        }
        model.addAttribute("pWin", pWin);
        model.addAttribute("pLose", pLose);

        /*************************************************************/

        /*************************************************************/
        //타자기록 테스트용
        List<Hitter> h = historyMapper.findAll_hitter();

        List<Integer> teamTPA = new ArrayList<Integer>();
        //int teamTPA[] = {0};

        for(int i = 0 ; i < h.size() ; i++) {
            teamTPA.add(h.get(i).getTpa());
            System.out.println(teamTPA);
        }
        model.addAttribute("teamTPA", teamTPA);

        /*************************************************************/

        /***********************************************************/
        /*  주성형 예제  */
        History history = new History();
        history.setName(11111111);
        if (history.getNum()>11){
            history.setDate(2017);
        }
        model.addAttribute("test2",history);
        /***********************************************************/
        return "index";
    }

    @RequestMapping("/internalprovision")
    public String InternalProvision(Model model) {
        this.setSideModelAttributes(model);
        model.addAttribute("cPage", "ip");
        return "internalprovision";
    }

    @RequestMapping("/editorialboard")
    public String EditorialBoard(Model model) {
        this.setSideModelAttributes(model);
        model.addAttribute("cPage", "eb");
        return "editorialboard";
    }

    @RequestMapping("/aimsscope")
    public String aimsscope(Model model) {
        this.setSideModelAttributes(model);
        model.addAttribute("cPage", "as");
        return "aimsscope";
    }

    @RequestMapping("/authorinfo")
    public String authorinfo(Model model) {
        this.setSideModelAttributes(model);
        model.addAttribute("cPage", "ai");
        return "authorinfo";
    }

    @RequestMapping("/editorialprocedure")
    public String EditorialProcedure(Model model) {
        this.setSideModelAttributes(model);
        model.addAttribute("cPage", "ep");
        return "editorialprocedure";
    }

    @RequestMapping("/ss")
    public String SpecialSection(Model model) {
        this.setSideModelAttributes(model);
        model.addAttribute("cPage", "ss");
        return "ss";
    }

    @RequestMapping("/si")
    public String SpecialIssue(Model model) {
        this.setSideModelAttributes(model);
        model.addAttribute("cPage", "si");
        return "si";
    }

    @RequestMapping("/submission")
    public String SubmitManuscript(Model model) {
        this.setSideModelAttributes(model);
        model.addAttribute("cPage", "sm");
        return "submission";
    }

    public void setSideModelAttributes(Model model) {
        model.addAttribute("years", paperMapper.findByYear());
        model.addAttribute("volumes", paperMapper.findByLatestNumber());
    }

    @RequestMapping("/digitallibrary")
    public String DigitalLibrary(Model model) {
        model.addAttribute("years", paperMapper.findByYear());
        model.addAttribute("volumes", paperMapper.findByVolume());
        model.addAttribute("number", paperMapper.findByMaxNumber());
        model.addAttribute("latestNum", paperMapper.findByLatestNumber());
        String[] monthsOld = {"March", "June", "September", "December"};
        String[] months = {"February", "April", "June", "August","October","December"};
        int[] numberIndices = {4,3,2,1};
        model.addAttribute("months", months);
        model.addAttribute("monthsOld", monthsOld);
        model.addAttribute("numberIndices", numberIndices);
        model.addAttribute("cPage", "dl");
        return "digitallibrary";
    }

    @RequestMapping("/onlinefirst")
    public String OnlineFirst(Model model) {
        this.setSideModelAttributes(model);
        SimpleDateFormat format = new SimpleDateFormat("MMMM dd, yyyy", Locale.US);
        Date afterDate = new Date(1000, 1, 1);
        Date currentDate = null;
        Date beforeDate = new Date(1000, 1, 1);
        model.addAttribute("ofpaper", paperMapper.findByOfPaper());
        model.addAttribute("format", format);
        model.addAttribute("afterDate", afterDate);
        model.addAttribute("currentDate", currentDate);
        model.addAttribute("beforeDate", beforeDate);
        model.addAttribute("cPage", "of");
        return "onlinefirst";
    }


    @RequestMapping("/digital.lib")
    public String DigitalList(Model model, @RequestParam int y, @RequestParam int v, @RequestParam int n) {
        model.addAttribute("years", paperMapper.findByYear());
        model.addAttribute("volumes", paperMapper.findByLatestNumber());
        model.addAttribute("features", paperMapper.findByFeatured());
        model.addAttribute("latest", paperMapper.findByLatest());
        model.addAttribute("latestNum", paperMapper.findByLatestNumber());
        model.addAttribute("digital", paperMapper.findByDigtalList(y, v, n));
        model.addAttribute("cPage", "dl");
        return "digital.lib";
    }


    @RequestMapping("/q.jips")
    public String Detail(Model model, @RequestParam(value = "pn", required = false) int pn, HttpSession session) {
        Paper paper = paperMapper.findByPaperDetail(pn);

        if (paper.getOf() == 0 && session.getAttribute("hit-" + pn) == null) {
            session.setAttribute("hit-" + pn, "ok");
            History recentHistory = historyMapper.findRecentHistoryByPn(pn);

            CustomDate customDateToday = systemUtil.getToday();
            CustomDate customDateRecent = new CustomDate(recentHistory.getYear(), recentHistory.getMonth(), recentHistory.getDate());

            if (customDateRecent.equals(customDateToday)) {
                recentHistory.setHit(recentHistory.getHit() + 1);
                historyMapper.update(recentHistory);
            } else {
                History newHistory = new History();
                newHistory.setYear(customDateToday.getYear());
                newHistory.setMonth(customDateToday.getMonth());
                newHistory.setDate(customDateToday.getDate());
                newHistory.setHit(recentHistory.getHit() + 1);
                newHistory.setDownhit(recentHistory.getDownhit());
                newHistory.setNum(pn);
                historyMapper.insert(newHistory);
            }
        }

        model.addAttribute("paper", paper);
        model.addAttribute("history", paperMapper.findByHistory(pn));
        if (paper.getOf() > 0) {
            model.addAttribute("cPage", "of");
        } else {
            model.addAttribute("cPage", "dl");
        }
        return "paper";
    }


    @RequestMapping("/volume")
    public String Volume(Model model, @RequestParam int v, @RequestParam int n) {
        model.addAttribute("years", paperMapper.findByYear());
        model.addAttribute("volumes", paperMapper.findByLatestNumber());
        model.addAttribute("features", paperMapper.findByFeatured());
        model.addAttribute("latest", paperMapper.findByLatest());
        model.addAttribute("paper", paperMapper.findByPaperSummary(v, n));
        model.addAttribute("currentVolume", paperMapper.findByLatestNumber());
        model.addAttribute("digital", paperMapper.findByVolumeList(v, n));
        model.addAttribute("cPage", "dl");
        return "volume";
    }

    @RequestMapping("/searchResult")
    public String Search(Model model, @RequestParam(required = false) String s) {
        this.setSideModelAttributes(model);
        model.addAttribute("searchWords", s);
        model.addAttribute("papers", paperMapper.findBySearchResult(s));
        return "searchResult";
    }

}