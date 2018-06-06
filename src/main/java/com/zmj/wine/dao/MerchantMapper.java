package com.zmj.wine.dao;

import com.zmj.wine.entity.Merchant;

public interface MerchantMapper {
    int deleteByPrimaryKey(Integer mtId);

    int insert(Merchant record);

    int insertSelective(Merchant record);

    Merchant selectByPrimaryKey(Integer mtId);

    int updateByPrimaryKeySelective(Merchant record);

    int updateByPrimaryKey(Merchant record);
}