package com.bigdata.service.impl;

import com.bigdata.entity.AppTraffic55;
import com.bigdata.dao.Mapper55;
import com.bigdata.service.AppTrafficLandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AppTrafficLandServiceImpl implements AppTrafficLandService {
    private final Mapper55 mapper55;

    @Autowired
    public AppTrafficLandServiceImpl(Mapper55 mapper55) {
        this.mapper55 = mapper55;
    }

    @Override
    public List<AppTraffic55> getAppTrafficLandData() {
        return mapper55.getAppTraffic55();
    }
}