package com.zmj.wine.dao;

import com.zmj.wine.entity.Content;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ContentMapper {

    Content selectByPrimaryKey(Integer contentId);

    //查询所有净含量组
    List<Content> selectAll();
}