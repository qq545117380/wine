package com.zmj.wine.dao;

import com.zmj.wine.entity.Subclass;

public interface SubclassMapper {
    int deleteByPrimaryKey(Integer subclassId);

    int insert(Subclass record);

    int insertSelective(Subclass record);

    Subclass selectByPrimaryKey(Integer subclassId);

    int updateByPrimaryKeySelective(Subclass record);

    int updateByPrimaryKey(Subclass record);
}