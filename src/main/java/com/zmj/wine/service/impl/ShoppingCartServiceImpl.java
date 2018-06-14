package com.zmj.wine.service.impl;

import com.zmj.wine.dao.ShoppingcartMapper;
import com.zmj.wine.entity.Shoppingcart;
import com.zmj.wine.service.IShoppingCartService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class ShoppingCartServiceImpl implements IShoppingCartService {
    @Resource
    private ShoppingcartMapper shoppingcartDAO;

    @Override
    public int insert(Shoppingcart shoppingcart) {
        int num = shoppingcartDAO.insert(shoppingcart);
        if(num>0){
            return 0;
        }else {
            return 1;
        }
    }

    @Override
    public int deleteByPrimaryKey(Integer cartId) {
        int num = shoppingcartDAO.deleteByPrimaryKey(cartId);
        if(num>0){
            return 0;
        }else {
            return 1;
        }
    }

    @Override
    public int updateByPrimaryKeySelective(Shoppingcart shoppingcart) {
        int num = shoppingcartDAO.updateByPrimaryKeySelective(shoppingcart);
        if(num>0){
            return 0;
        }else {
            return 1;
        }
    }

    @Override
    public Shoppingcart selectByPrimaryKey(Integer cartId) {
        Shoppingcart shoppingcart = shoppingcartDAO.selectByPrimaryKey(cartId);
        return shoppingcart;
    }

    @Override
    public List<Shoppingcart> selectByUserId(Integer userId) {
        List<Shoppingcart> shoppingcartList = shoppingcartDAO.selectByUserId(userId);
        return shoppingcartList;
    }

    @Override
    public Shoppingcart selectByUserIdAndItemName(Integer userId, String itemName) {
        Shoppingcart shoppingcart = shoppingcartDAO.selectByUserIdAndItemName(userId, itemName);
        return shoppingcart;
    }

    @Override
    public void updateByCount(Integer userId, String itemName, Integer count) {
        shoppingcartDAO.updateByCount(userId, itemName, count);
    }
}
