package jips.kor.controller;

import jips.kor.SystemUtil;
import jips.kor.domain.*;
import jips.kor.repository.HHRateMapper;
import jips.kor.repository.HitterMapper;
import jips.kor.repository.PitcherMapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.inject.Inject;
import java.util.*;

@Controller
@RequestMapping("/")
public class HomeController {

    @Inject
    private HitterMapper hitterMapper;

    @Inject
    private PitcherMapper pitcherMapper;

    @Inject
    private HHRateMapper hhrateMapper;

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
        /*this.setSideModelAttributes(model);*/
        System.out.println("정상적으로 호출되었습니다.");
        model.addAttribute("cPage", "home");
        model.addAttribute("test","정상적으로 호출되었습니다.");

        /*************************************************************/
        /*  투수DB기록 테스트용 */
        List<Pitcher> p = pitcherMapper.findAll_pitcher();

        int pWin=0;

        for(int i=0;i<p.size();i++)
        {
            pWin = p.get(i).getW();
            /*if(p.get(i).getW() == 1){
                pWin+=1;
            }
            else if(p.get(i).getL() == 1){
                pLose+=1;
            }*/
        }
        model.addAttribute("pWin", pWin);
        /*************************************************************/

        //타자기록 테스트용
        List<Hitter> h = hitterMapper.findAll_hitter();
        List<Integer> tpa = new ArrayList<Integer>();
        List<Integer> day = new ArrayList<Integer>();

        for(int i=0;i<h.size();i++) {
            System.out.print("tpa : ");
            System.out.println(h.get(i).getTPA());
            System.out.print("day : ");
            System.out.println(h.get(i).getDate());
        }

        /*for(int i=0 ; i<h.size() ; i++){
          tpa.get(h.get(i).getTpa());
        }*/

        model.addAttribute("tpa", tpa);
        model.addAttribute("day", day);


        /* 날짜입력 */
        Date test_date = new Date();
        model.addAttribute("test_date", test_date);


        return "index";
    }

    @RequestMapping("/data")
    public String Data(Model model) {
        /*this.setSideModelAttributes(model);*/
        /* 여기에 예측페이지에서 구현할 기능 설정 */
        List<Pitcher> p = pitcherMapper.findAll_pitcher();
        List<Hitter> h = hitterMapper.findAll_hitter();

    /*for(int i=0;i<1;i++) {
        System.out.println(i+"번째 트라이");
        System.out.println(hhr.get(i).getM_acc());
    }*/
        for(int i=0; i<p.size(); i++){
            p.get(i).toString();
        }
        for(int i=0; i<h.size(); i++){
            h.get(i).toString();
        }

        model.addAttribute("test_p", p);
        model.addAttribute("test_h", h);

        return "data";
    }

    @RequestMapping("/nonamed")
    public String Nonamed(Model model) {
        /*this.setSideModelAttributes(model);*/
        /* 여기에 예측페이지에서 구현할 기능 설정 */

        List<HHRate> hhr = hhrateMapper.findAll_hhrate();

        for(int i=0; i<hhr.size(); i++){
            hhr.get(i).toString();
        }
        model.addAttribute("test_hhr", hhr);

        return "nonamed";
    }
}