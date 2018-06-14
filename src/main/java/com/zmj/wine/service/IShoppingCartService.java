package com.zmj.wine.service;

import com.zmj.wine.entity.Shoppingcart;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IShoppingCartService {
    int insert(Shoppingcart record);

    int deleteByPrimaryKey(Integer cartId);

    int updateByPrimaryKeySelective(Shoppingcart record);

    Shoppingcart selectByPrimaryKey(Integer cartId);

    List<Shoppingcart> selectByUserId(Integer userId);

    //  <!--查询数据库内当前user的购物车内有没有此种商品-->
    Shoppingcart selectByUserIdAndItemName(Integer userId,
                                           String itemName);

    void updateByCount(Integer userId,
                       String itemName,Integer count);

}
