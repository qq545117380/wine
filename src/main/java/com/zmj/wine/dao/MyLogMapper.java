package com.zmj.wine.dao;

import com.zmj.wine.entity.MyLog;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import sun.rmi.runtime.Log;

import java.util.List;

@Repository
public interface MyLogMapper {
    int deleteByPrimaryKey(Integer logId);

    int insert(MyLog record);

    int insertSelective(MyLog record);

    MyLog selectByPrimaryKey(Integer logId);

    int updateByPrimaryKeySelective(MyLog record);

    int updateByPrimaryKey(MyLog record);

    //查询日志的总数量
    int selectLogNum();

    //后台分页查询登录日志
    List<Log> selectLogByPage
    (@Param("index")int index,@Param("size") int size);
}