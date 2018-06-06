package com.zmj.wine.dao;

import com.zmj.wine.entity.Flavour;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface FlavourMapper {

    Flavour selectByPrimaryKey(Integer flavourId);

    //查询所有酒类型
    List<Flavour> selectAll();
}