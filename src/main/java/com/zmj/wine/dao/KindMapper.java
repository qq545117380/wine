package com.zmj.wine.dao;

import com.zmj.wine.entity.Kind;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface KindMapper {

    Kind selectByPrimaryKey(Integer kindId);

    List<Kind> selectAll();

    Integer selectIdByName(String kindName);
}