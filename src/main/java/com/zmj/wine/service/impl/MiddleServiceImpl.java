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
    public int[] selectByTerm(Integer kindId,
                              Integer brandId, Integer yieldlyId,
                              Integer flavourId, Integer proofId,
                              Integer contentId, Integer priceId) {
        int[] ints = middleDAO.selectByTerm(kindId, brandId, yieldlyId, flavourId, proofId, contentId, priceId);
        return ints;
    }


    @Override
    public int[] selectAllByKindId(Integer kindId) {
        int[] ints = middleDAO.selectAllByKindId(kindId);
        return ints;
    }

    @Override
    public int[] selectYieldlyIdByTerm(Integer kindId, Integer brandId,
                Integer flavourId, Integer proofId, Integer contentId, Integer priceId) {
        int[] ints = middleDAO.selectYieldlyIdByTerm(kindId,
                brandId, flavourId, proofId, contentId, priceId);
        return ints;
    }

    @Override
    public int[] selectFlavourIdByTerm(Integer kindId, Integer brandId,
                Integer yieldlyId, Integer proofId, Integer contentId, Integer priceId) {
        int[] ints = middleDAO.selectFlavourIdByTerm(kindId,
                brandId, yieldlyId, proofId, contentId, priceId);
        return ints;
    }

    @Override
    public int[] selectProofIdByTerm(Integer kindId, Integer brandId,
                Integer yieldlyId, Integer flavourId, Integer contentId, Integer priceId) {
        int[] ints = middleDAO.selectProofIdByTerm(kindId,
                brandId, yieldlyId, flavourId, contentId, priceId);
        return ints;
    }

    @Override
    public int[] selectContentIdByTerm(Integer kindId, Integer brandId, Integer yieldlyId, Integer flavourId, Integer proofId, Integer priceId) {
        int[] ints = middleDAO.selectContentIdByTerm(kindId, brandId, yieldlyId, flavourId, proofId, priceId);
        return ints;
    }

    @Override
    public int[] selectPriceByTerm(Integer kindId, Integer brandId, Integer yieldlyId, Integer flavourId, Integer proofId, Integer contentId) {
        int[] ints = middleDAO.selectPriceByTerm(kindId, brandId, yieldlyId, flavourId, proofId, contentId);
        return ints;
    }
}
