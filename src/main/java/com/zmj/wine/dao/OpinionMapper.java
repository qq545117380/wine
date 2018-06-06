package com.zmj.wine.dao;

import com.zmj.wine.entity.Opinion;
import org.springframework.stereotype.Repository;

@Repository
public interface OpinionMapper {
    int deleteByPrimaryKey(Integer opinionId);

    int insert(Opinion record);

    int insertSelective(Opinion record);

    Opinion selectByPrimaryKey(Integer opinionId);

    int updateByPrimaryKeySelective(Opinion record);

    int updateByPrimaryKey(Opinion record);
}