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

        return "index";
    }

    @RequestMapping("/data")
    public String Data(Model model) {
<<<<<<< HEAD
        List<Pitcher> p = pitcherMapper.findAll_pitcher();
        List<Hitter> h = hitterMapper.findAll_hitter();

        for(int i=0; i<p.size(); i++){
            p.get(i).toString();
        }
        for(int i=0; i<h.size(); i++){
            h.get(i).toString();
        }
=======
        /*this.setSideModelAttributes(model);*/
        /* 여기에 예측페이지에서 구현할 기능 설정 */
        List<Pitcher> pitchers = pitcherMapper.findAll_pitcher();

        for(int i=0; i<pitchers.size(); i++){
           /* System.out.println(pitchers.get(i).toString());*/
        }
        List<Hitter> hitters = hitterMapper.findAll_hitter();

    /*for(int i=0;i<1;i++) {
        System.out.println(i+"번째 트라이");
        System.out.println(hhr.get(i).getM_acc());
    }*/
        model.addAttribute("test_p", pitchers);
>>>>>>> 81cfa446f313ca045541d03d5796a12c8ea97669

        for(int i=0; i<hitters.size(); i++){
            hitters.get(i).toString();
        }
        model.addAttribute("test_h", hitters);

        return "data";
    }

    @RequestMapping("/nonamed")
    public String Nonamed(Model model) {
        List<HHRate> hhr = hhrateMapper.findAll_hhrate();

        for(int i=0; i<hhr.size(); i++){
            hhr.get(i).toString();
        }
        model.addAttribute("test_hhr", hhr);

        return "nonamed";
    }

    @RequestMapping("/about")
    public String About(Model model) {

        return "about";
    }
}