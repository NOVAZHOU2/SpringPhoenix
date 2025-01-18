package com.bigdata.service.impl;

import com.bigdata.dao.Mapper53;
import com.bigdata.entity.AppTraffic53;
import com.bigdata.service.AppTrafficService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AppTrafficServiceImpl implements AppTrafficService {

    @Autowired
    private Mapper53 mapper53;

    @Override
    public List<AppTraffic53> getAppTrafficBarData() {
        return mapper53.getAppTraffic531();
    }

    @Override
    public List<AppTraffic53> getAppTrafficPieData() {
        return mapper53.getAppTraffic532();
    }
}