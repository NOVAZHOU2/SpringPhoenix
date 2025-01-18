package com.bigdata.dao;

import com.bigdata.entity.AppTraffic54;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface Mapper54 {
    List<AppTraffic54> getAppTraffic54();
}