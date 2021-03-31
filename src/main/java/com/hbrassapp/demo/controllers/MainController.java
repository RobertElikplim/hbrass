package com.hbrassapp.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

@RequestMapping(value="/")
    public ModelAndView start() {
    ModelAndView mv = new ModelAndView("index");
    return mv;
}

}
