package com.zmj.wine.service;

import com.zmj.wine.entity.Shoppingcart;

import java.util.List;

public interface IShoppingCartService {
    int insert(Shoppingcart record);

    int deleteByPrimaryKey(Integer cartId);

    int updateByPrimaryKeySelective(Shoppingcart record);

    Shoppingcart selectByPrimaryKey(Integer cartId);

    List<Shoppingcart> selectByUserId(Integer userId);
}
