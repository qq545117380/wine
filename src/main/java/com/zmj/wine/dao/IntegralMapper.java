package com.zmj.wine.dao;

import com.zmj.wine.entity.Integral;

public interface IntegralMapper {
    int deleteByPrimaryKey(Integer ihId);

    int insert(Integral record);

    int insertSelective(Integral record);

    Integral selectByPrimaryKey(Integer ihId);

    int updateByPrimaryKeySelective(Integral record);

    int updateByPrimaryKey(Integral record);
}