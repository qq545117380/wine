package com.zmj.wine.service.impl;

import com.zmj.wine.dao.MiddleMapper;
import com.zmj.wine.service.IMiddleService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service
@Transactional
public class MiddleServiceImpl implements IMiddleService{
    @Resource
    private MiddleMapper middleDAO;

    @Override
    public int[] selectByTerm(Integer kindId, Integer subclassId,
                              Integer brandId, Integer yieldlyId,
                              Integer flavourId, Integer proofId,
                              Integer contentId, Integer priceId) {
        int[] ints = middleDAO.selectByTerm(kindId, subclassId, brandId, yieldlyId, flavourId, proofId, contentId, priceId);
        return ints;
    }

    @Override
    public int[] selectAllByKindId(Integer kindId) {
        int[] ints = middleDAO.selectAllByKindId(kindId);
        return ints;
    }
}
