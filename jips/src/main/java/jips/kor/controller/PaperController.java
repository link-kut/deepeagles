package jips.kor.controller;

import jips.kor.repository.PaperMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;


@Controller

@RequestMapping("/paper")
public class PaperController {
    @Inject
    private PaperMapper paperMapper;


    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String edit(@RequestParam int num, Model model) {
        model.addAttribute("paper", paperMapper.findByNum(num));
        return "hello";
    }


}
