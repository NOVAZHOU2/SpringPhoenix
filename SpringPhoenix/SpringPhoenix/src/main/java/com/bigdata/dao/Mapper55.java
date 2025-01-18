package com.bigdata.dao;

import com.bigdata.entity.AppTraffic55;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface Mapper55 {
    List<AppTraffic55> getAppTraffic55();
}