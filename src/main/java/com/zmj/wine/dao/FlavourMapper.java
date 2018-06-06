package com.zmj.wine.dao;

import com.zmj.wine.entity.Flavour;

public interface FlavourMapper {
    int deleteByPrimaryKey(Integer flavourId);

    int insert(Flavour record);

    int insertSelective(Flavour record);

    Flavour selectByPrimaryKey(Integer flavourId);

    int updateByPrimaryKeySelective(Flavour record);

    int updateByPrimaryKey(Flavour record);
}