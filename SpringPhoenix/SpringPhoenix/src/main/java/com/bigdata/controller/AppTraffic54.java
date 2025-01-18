package com.bigdata.controller;

import com.bigdata.service.AppTrafficTrendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class AppTraffic54 {
    private final AppTrafficTrendService appTrafficTrendService;

    @Autowired
    public AppTraffic54(AppTrafficTrendService appTrafficTrendService) {
        this.appTrafficTrendService = appTrafficTrendService;
    }
    //直接给前端传了entity类型的数据，jsp中已处理，可正常显示
    @GetMapping("/get54Data")
    public String showAppTrafficTrendChart(Model model) {
        List<com.bigdata.entity.AppTraffic54> appTrafficTrendData = appTrafficTrendService.getAppTrafficTrendData();
        model.addAttribute("appTrafficTrendData", appTrafficTrendData);
        for(com.bigdata.entity.AppTraffic54 o:appTrafficTrendData){
            System.out.println(o.getPhoneSpeedTestTraffic());
        }
        return "appTraffic54";
    }
}