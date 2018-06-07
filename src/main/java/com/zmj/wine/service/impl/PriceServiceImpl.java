package com.zmj.wine.service.impl;

import com.zmj.wine.dao.PriceMapper;
import com.zmj.wine.entity.Price;
import com.zmj.wine.service.IPriceService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Service
@Transactional
public class PriceServiceImpl implements IPriceService{
    @Resource
    private PriceMapper priceDAO;

    @Override
    public Price selectByPrimaryKey(Integer priceId) {
        return null;
    }

    @Override
    public List<Price> selectAllByKindId(int kindId) {
        List<Price> priceList = priceDAO.selectAllByKindId(kindId);
        return priceList;
    }
}
