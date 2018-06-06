package com.zmj.wine.dao;

import com.zmj.wine.entity.Middle;

public interface MiddleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Middle record);

    int insertSelective(Middle record);

    Middle selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Middle record);

    int updateByPrimaryKey(Middle record);
}