package com.zmj.wine.service;

import com.zmj.wine.entity.Item;
import com.zmj.wine.utils.PageBean;

import java.util.List;

/**
 * @athor hutao
 **/

public interface ItemService {

    //后台查询所有的商品
    List<Item> selectItemAll();

    //查询商品的总数量
    int selectItemNum();

    //后台分页查询商品信息
    PageBean<Item> selectItemByPage(int currentPage);

    Item selectByPrimaryKey(Integer itemId);

    //后台添加商品
    void addItem( Item item);

    //后台查询商品信息
    Item findItem(int itemId);

    //后台修改商品信息
     void updateItem(Item item);
}
