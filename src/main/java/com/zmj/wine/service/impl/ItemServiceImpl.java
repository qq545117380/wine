package com.zmj.wine.service.impl;

import com.zmj.wine.dao.ItemMapper;
import com.zmj.wine.entity.Item;
import com.zmj.wine.service.ItemService;
import com.zmj.wine.utils.PageBean;
import com.zmj.wine.utils.SystemUtils;
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

    @Override
    public int selectItemNum() {
        return itemMapper.selectItemNum();
    }

    @Override
    public PageBean<Item> selectItemByPage(int currentPage) {
        //查询商品的总数量
        int sum = itemMapper.selectItemNum();
        //获得分页的常数
        int size = SystemUtils.PAGE_SIZE;
        //获得总页数
        int sumPage = sum % size == 0? sum/size : sum/size +1;
        //进行分页查询
        List<Item> itemList = itemMapper.selectItemByPage
                ((currentPage - 1) * size, size);
        PageBean pageBean = new PageBean<>();
        pageBean.setCurrentPage(currentPage);
        pageBean.setTotalPage(sumPage);
        pageBean.setData(itemList);
        pageBean.setSum(sum);
        return pageBean;
    }


    @Override
    public Item selectByPrimaryKey(Integer itemId) {
        Item item = itemMapper.selectByPrimaryKey(itemId);
        return item;
    }

    //<!--根据酒名查询单品信息-->
    @Override
    public Item selectByName(String itemName) {
        Item item = itemMapper.selectByName(itemName);
        return item;
    }

    //后台添加商品
    @Override
    public void addItem(Item item) {
        itemMapper.insert(item);
    }

    //后台查询商品
    @Override
    public Item findItem(int itemId) {
        return itemMapper.selectByPrimaryKey(itemId);
    }

    //后台修改商品信息
    @Override
    public void updateItem(Item item) {
        itemMapper.updateByPrimaryKeySelective(item);
    }

    @Override
    public List<Item> selectByDescribe(String itemDescribe) {
        List<Item> itemList = itemMapper.selectByDescribe(itemDescribe);
        return itemList;
    }


}
