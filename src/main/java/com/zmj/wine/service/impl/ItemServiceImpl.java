package com.zmj.wine.service.impl;

import com.zmj.wine.dao.ItemMapper;
import com.zmj.wine.entity.Item;
import com.zmj.wine.service.ItemService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @athor hutao
 **/
@Transactional
@Service
public class ItemServiceImpl implements ItemService {

    @Resource
    private ItemMapper itemMapper;

    //后台查询所有的商品
    @Override
    public List<Item> selectItemAll() {
        return itemMapper.selectItemAll();
    }




}
