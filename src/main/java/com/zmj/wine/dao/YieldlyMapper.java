package com.zmj.wine.dao;

import com.zmj.wine.entity.Yieldly;

public interface YieldlyMapper {
    int deleteByPrimaryKey(Integer yieldlyId);

    int insert(Yieldly record);

    int insertSelective(Yieldly record);

    Yieldly selectByPrimaryKey(Integer yieldlyId);

    int updateByPrimaryKeySelective(Yieldly record);

    int updateByPrimaryKey(Yieldly record);
}