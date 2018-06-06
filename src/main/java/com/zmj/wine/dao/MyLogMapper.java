package com.zmj.wine.dao;

import com.zmj.wine.entity.MyLog;
import org.springframework.stereotype.Repository;

@Repository
public interface MyLogMapper {
    int deleteByPrimaryKey(Integer logId);

    int insert(MyLog record);

    int insertSelective(MyLog record);

    MyLog selectByPrimaryKey(Integer logId);

    int updateByPrimaryKeySelective(MyLog record);

    int updateByPrimaryKey(MyLog record);
}