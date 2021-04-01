package com.hbrassapp.demo.controllers;

import com.hbrassapp.demo.Models.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class MainController {

    @Autowired
    employeerepo employeeRepo;
    @Autowired
    StatesRepo statesRepo;
    @Autowired
    MiscellaneousRepo miscellaneousRepo;
    @Autowired
    IncomeRepo incomeRepo;
    @Autowired
    DropOffLocation dropOffLocation;
    @Autowired
    DopInspectionRepo dopInspectionRepo;
    @Autowired
    BrokerCompany brokerCompany;


@RequestMapping(value="/")
    public ModelAndView start() {
    ModelAndView mv = new ModelAndView("index");
    mv.addObject("employeeList", employeeRepo.findAll());
    return mv;
}

}
