package com.zmj.wine.dao;

import com.zmj.wine.entity.Shoppingcart;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ShoppingcartMapper {
    int deleteByPrimaryKey(Integer cartId);

    int insert(Shoppingcart record);

    int insertSelective(Shoppingcart record);
    //根据id查找商品信息
    Shoppingcart selectByPrimaryKey(Integer cartId);

    int updateByPrimaryKeySelective(Shoppingcart record);

    int updateByPrimaryKey(Shoppingcart record);

    List<Shoppingcart> selectByUserId(Integer userId);
}