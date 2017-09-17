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

        List<HHRate> hhr = hhrateMapper.findAll_hhrate();
        model.addAttribute("home_hhr", hhr);

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

    @RequestMapping("/nonamed")
    public String Nonamed(Model model) {
        List<HHRate> hhr = hhrateMapper.findAll_hhrate();

        for(int i=0; i<hhr.size(); i++){
            hhr.get(i).toString();
        }
        model.addAttribute("test_hhr", hhr);

        List<HHRate> hhgraph = hhrateMapper.findgraph_hhrate();
        model.addAttribute("graphdata",hhgraph);

        List<HHRate> hhrecent = hhrateMapper.findrecent_hhrate();
        model.addAttribute("datarecent",hhrecent);

        return "nonamed";
    }

    @RequestMapping("/about")
    public String About(Model model) {

        return "about";
    }
}