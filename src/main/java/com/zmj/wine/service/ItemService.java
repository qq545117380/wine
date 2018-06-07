package com.zmj.wine.service;

import com.zmj.wine.entity.Item;

import java.util.List;

/**
 * @athor hutao
 **/

public interface ItemService {

    //后台查询所有的商品
    List<Item> selectItemAll();

}
