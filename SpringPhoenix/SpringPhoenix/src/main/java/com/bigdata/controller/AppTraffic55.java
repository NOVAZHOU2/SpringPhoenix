package com.bigdata.controller;

import com.bigdata.service.AppTrafficLandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class AppTraffic55 {
    private final AppTrafficLandService appTrafficLandService;

    @Autowired
    public AppTraffic55(AppTrafficLandService appTrafficLandService) {
        this.appTrafficLandService = appTrafficLandService;
    }
    //直接给前端传了entity类型的数据，jsp中已处理，可正常显示
    @RequestMapping("/get55Data")
    public String getAppTrafficBar(Model model) {
        List<com.bigdata.entity.AppTraffic55> appTrafficLandData = appTrafficLandService.getAppTrafficLandData();
        model.addAttribute("appTrafficLandData", appTrafficLandData);
        for(com.bigdata.entity.AppTraffic55 o:appTrafficLandData){
            System.out.println(o.getAppName());
        }
        return "appTraffic55";
    }
}