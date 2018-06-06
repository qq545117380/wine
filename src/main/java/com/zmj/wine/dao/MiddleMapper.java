package com.zmj.wine.dao;

import com.zmj.wine.entity.Middle;
import org.springframework.stereotype.Repository;

//中间表
@Repository
public interface MiddleMapper {
    int deleteByPrimaryKey(Integer id);

    int insertSelective(Middle record);

    Middle selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Middle record);

}