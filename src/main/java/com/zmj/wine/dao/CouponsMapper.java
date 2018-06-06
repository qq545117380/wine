package com.zmj.wine.dao;

import com.zmj.wine.entity.Coupons;

public interface CouponsMapper {
    int deleteByPrimaryKey(Integer couponsId);

    int insert(Coupons record);

    int insertSelective(Coupons record);

    Coupons selectByPrimaryKey(Integer couponsId);

    int updateByPrimaryKeySelective(Coupons record);

    int updateByPrimaryKey(Coupons record);
}