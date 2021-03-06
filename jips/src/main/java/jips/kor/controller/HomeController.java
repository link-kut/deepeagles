package jips.kor.controller;

import jips.kor.SystemUtil;
import jips.kor.domain.*;
import jips.kor.repository.HHRateMapper;
import jips.kor.repository.HHScheduleMapper;
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
    private HHScheduleMapper hhScheduleMapper;

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

        List<HHSchedule> hhSche = hhScheduleMapper.findrecent_hhschedule();
        model.addAttribute("hhschedule",hhSche);

        List<HHRate> hhrecent = hhrateMapper.findrecent_hhrate();
        model.addAttribute("datarecent",hhrecent);

        return "index";
    }

    @RequestMapping("/data")
    public String Data(Model model) {

        /*this.setSideModelAttributes(model);*/
        /* 여기에 예측페이지에서 구현할 기능 설정 */
        List<Pitcher> pitchers = pitcherMapper.findAll_pitcher();
        model.addAttribute("test_p", pitchers);

        List<Hitter> hitters = hitterMapper.findAll_hitter();
        model.addAttribute("test_h", hitters);
        for(int i=0; i<hitters.size(); i++){
            hitters.get(i).toString();
        }

        List<HHRate> hhr = hhrateMapper.findAll_hhrate();
        model.addAttribute("data_hhr", hhr);
/*        for(int i=0; i<hhr.size(); i++){
            hitters.get(i).toString();
        }*/

        return "data";
    }

    @RequestMapping("/history")
    public String History(Model model) {
        List<HHRate> hhr = hhrateMapper.findAll_hhrate();

        for(int i=0; i<hhr.size(); i++){
            hhr.get(i).toString();
        }
        model.addAttribute("test_hhr", hhr);

        List<HHRate> hhgraph = hhrateMapper.findgraph_hhrate();
        model.addAttribute("graphdata",hhgraph);

        List<HHRate> hhrecent = hhrateMapper.findrecent_hhrate();
        model.addAttribute("datarecent",hhrecent);

        List<HHRate> hhr_corr = hhrateMapper.findcorrect_hhrate();
        model.addAttribute("hhr_corr", hhr_corr);

        Integer count_corr = hhrateMapper.count_correct();
        model.addAttribute("count_corr",count_corr);

        Integer count_total = hhrateMapper.count_total();
        model.addAttribute("count_total",count_total);

        return "history";
    }

    @RequestMapping("/todaypredict")
    public String todayPredict(Model model) {

        List<HHRate> hhr = hhrateMapper.findAll_hhrate();

        for(int i=0; i<hhr.size(); i++){
            hhr.get(i).toString();
        }
        model.addAttribute("test_hhr", hhr);

        List<HHRate> hhgraph = hhrateMapper.findgraph_hhrate();
        model.addAttribute("graphdata",hhgraph);

        List<HHRate> hhrecent = hhrateMapper.findrecent_hhrate();
        model.addAttribute("datarecent",hhrecent);

        List<HHRate> hhr_corr = hhrateMapper.findcorrect_hhrate();
        model.addAttribute("hhr_corr", hhr_corr);

        return "todaypredict";
    }

    @RequestMapping("/about")
    public String About(Model model) {

        return "about";
    }
}