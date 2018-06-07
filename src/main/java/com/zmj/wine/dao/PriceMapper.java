package com.zmj.wine.dao;

import com.zmj.wine.entity.Price;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PriceMapper {

    Price selectByPrimaryKey(Integer priceId);

    //查询所有的价格区间
    List<Price> selectAllByKindId(int kindId);
}