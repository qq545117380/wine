package com.zmj.wine.dao;

import com.zmj.wine.entity.Hoarding;

public interface HoardingMapper {
    int deleteByPrimaryKey(Integer hoardingId);

    int insert(Hoarding record);

    int insertSelective(Hoarding record);

    Hoarding selectByPrimaryKey(Integer hoardingId);

    int updateByPrimaryKeySelective(Hoarding record);

    int updateByPrimaryKey(Hoarding record);
}