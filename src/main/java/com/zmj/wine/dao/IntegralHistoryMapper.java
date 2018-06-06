package com.zmj.wine.dao;

import com.zmj.wine.entity.IntegralHistory;

public interface IntegralHistoryMapper {
    int deleteByPrimaryKey(Integer ihId);

    int insert(IntegralHistory record);

    int insertSelective(IntegralHistory record);

    IntegralHistory selectByPrimaryKey(Integer ihId);

    int updateByPrimaryKeySelective(IntegralHistory record);

    int updateByPrimaryKey(IntegralHistory record);
}