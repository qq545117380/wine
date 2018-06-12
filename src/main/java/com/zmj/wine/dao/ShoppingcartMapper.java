package com.zmj.wine.dao;

import com.zmj.wine.entity.Shoppingcart;

import java.util.List;

public interface ShoppingcartMapper {
    int deleteByPrimaryKey(Integer cartId);

    int insert(Shoppingcart record);

    int insertSelective(Shoppingcart record);

    Shoppingcart selectByPrimaryKey(Integer cartId);

    int updateByPrimaryKeySelective(Shoppingcart record);

    int updateByPrimaryKey(Shoppingcart record);

    List<Shoppingcart> selectByUserId(Integer userId);
}