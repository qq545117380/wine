package com.zmj.wine.dao;

import com.zmj.wine.entity.Yieldly;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface YieldlyMapper {

    Yieldly selectByPrimaryKey(Integer yieldlyId);

    //查询所有酒产地
    List<Yieldly> selectAll();
}