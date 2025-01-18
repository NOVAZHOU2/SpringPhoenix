package com.bigdata.controller;

import com.bigdata.service.AppTrafficService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class AppTraffic53 {

    @Autowired
    private AppTrafficService appTrafficService;

    //直接给前端传了entity类型的数据，jsp中已处理，可正常显示
    @RequestMapping("/get53Data")
    public String getAppTrafficBar(Model model) {
        List<com.bigdata.entity.AppTraffic53> barData = appTrafficService.getAppTrafficBarData();
        List<com.bigdata.entity.AppTraffic53> pieData = appTrafficService.getAppTrafficPieData();
        model.addAttribute("barData", barData);
        model.addAttribute("pieData", pieData);
        return "appTraffic53";
    }
}