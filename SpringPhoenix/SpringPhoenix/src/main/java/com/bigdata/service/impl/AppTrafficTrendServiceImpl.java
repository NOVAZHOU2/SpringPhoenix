package com.bigdata.service.impl;

import com.bigdata.entity.AppTraffic54;
import com.bigdata.dao.Mapper54;
import com.bigdata.service.AppTrafficTrendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AppTrafficTrendServiceImpl implements AppTrafficTrendService {
    private final Mapper54 mapper54;

    @Autowired
    public AppTrafficTrendServiceImpl(Mapper54 mapper54) {
        this.mapper54 = mapper54;
    }

    @Override
    public List<AppTraffic54> getAppTrafficTrendData() {
        return mapper54.getAppTraffic54();
    }
}