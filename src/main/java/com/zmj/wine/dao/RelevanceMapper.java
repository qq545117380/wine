package com.zmj.wine.dao;

import com.zmj.wine.entity.Relevance;

public interface RelevanceMapper {
    int deleteByPrimaryKey(Integer relevanceId);

    int insert(Relevance record);

    int insertSelective(Relevance record);

    Relevance selectByPrimaryKey(Integer relevanceId);

    int updateByPrimaryKeySelective(Relevance record);

    int updateByPrimaryKey(Relevance record);
}