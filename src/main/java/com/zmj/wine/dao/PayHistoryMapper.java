package com.zmj.wine.dao;

import com.zmj.wine.entity.PayHistory;

public interface PayHistoryMapper {
    int deleteByPrimaryKey(Integer phId);

    int insert(PayHistory record);

    int insertSelective(PayHistory record);

    PayHistory selectByPrimaryKey(Integer phId);

    int updateByPrimaryKeySelective(PayHistory record);

    int updateByPrimaryKey(PayHistory record);
}