package com.zmj.wine.service.impl;

import com.zmj.wine.dao.RelevanceMapper;
import com.zmj.wine.entity.Relevance;
import com.zmj.wine.service.IRelevanceService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Service
@Transactional
public class RelevanceServiceImpl implements IRelevanceService{
    @Resource
    private RelevanceMapper relevanceDAO;
    @Override
    public List<Relevance> selectItemByItemId(Integer itemId) {
        List<Relevance> relevanceList = relevanceDAO.selectItemByItemId(itemId);
        return relevanceList;
    }
}
