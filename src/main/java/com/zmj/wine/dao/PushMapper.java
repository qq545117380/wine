package com.zmj.wine.dao;

import com.zmj.wine.entity.Push;

public interface PushMapper {
    int deleteByPrimaryKey(Integer pushId);

    int insert(Push record);

    int insertSelective(Push record);

    Push selectByPrimaryKey(Integer pushId);

    int updateByPrimaryKeySelective(Push record);

    int updateByPrimaryKey(Push record);
}