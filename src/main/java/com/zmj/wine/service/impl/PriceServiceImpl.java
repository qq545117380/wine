package com.zmj.wine.service.impl;

import com.alibaba.fastjson.JSON;
import com.google.gson.Gson;
import com.zmj.wine.dao.PriceMapper;
import com.zmj.wine.entity.Price;
import com.zmj.wine.service.IPriceService;
import com.zmj.wine.utils.RedisUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Service
@Transactional
public class PriceServiceImpl implements IPriceService{
    @Resource
    private PriceMapper priceDAO;

    @Resource
    private RedisUtil redisUtil;

    @Override
    public Price selectByPrimaryKey(Integer priceId) {
        Gson gson = new Gson();
        String key="price"+priceId.toString();
        Price price;
        try {
            //通过key取redis内的对象字符串，再转换为对象
            price = JSON.parseObject(redisUtil.get(key).toString(), Price.class);
        }catch (NullPointerException e1){
            synchronized (key){
                try{
                    price = JSON.parseObject(redisUtil.get(key).toString(), Price.class);
                }catch (NullPointerException e2){
                    price = priceDAO.selectByPrimaryKey(priceId);
                    //gson.toJson(item)  转化为json字符串
                    redisUtil.set(key,gson.toJson(price));
                }
            }
        }
        return price;
    }

    @Override
    public List<Price> selectAllByKindId(int kindId) {
        List<Price> priceList = priceDAO.selectAllByKindId(kindId);
        return priceList;
    }
}
