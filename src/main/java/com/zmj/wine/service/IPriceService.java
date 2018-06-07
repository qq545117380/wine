package com.zmj.wine.service;

import com.zmj.wine.entity.Price;

import java.util.List;

public interface IPriceService {
    Price selectByPrimaryKey(Integer priceId);

    //查询所有的价格区间
    List<Price> selectAllByKindId(int kindId);
}
