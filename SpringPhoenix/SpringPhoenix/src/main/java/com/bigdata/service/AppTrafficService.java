package com.bigdata.service;

import com.bigdata.entity.AppTraffic53;
import java.util.List;

public interface AppTrafficService {
    List<AppTraffic53> getAppTrafficBarData();
    List<AppTraffic53> getAppTrafficPieData();
}