package com.zmj.wine.service;

import com.zmj.wine.entity.Relevance;

import java.util.List;

public interface IRelevanceService {
    List<Relevance> selectItemByItemId(Integer itemId);
}
