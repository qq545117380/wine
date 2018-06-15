package com.zmj.wine.controller;

import com.zmj.wine.entity.Item;
import com.zmj.wine.service.ItemService;
import com.zmj.wine.utils.RedisUtil;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/panicBuy")
public class PanicBuyController {
    @Resource
    private RedisUtil redisUtil;

    @Resource
    private ItemService itemService;


    @Resource
    private StringRedisTemplate stringRedisTemplate;

    @RequestMapping("/buy")
    public String panicBuying(Integer count, Integer itemId, String itemName,
                              HttpSession httpSession, Model model){
        String key="panicBuying"+String.valueOf(itemId);
        Item item=itemService.selectByName(itemName);
        String number;
        try{
            number = redisUtil.get(key).toString();
        }catch (NullPointerException e){
            synchronized (key){
                try{
                    number = redisUtil.get(key).toString();
                }catch (NullPointerException e2){
                    redisUtil.set(key,String.valueOf(item.getItemPreferential()));
                }
            }
        }

        //开启redis事务支持（----应该需要在xml里也配置---
        stringRedisTemplate.setEnableTransactionSupport(true);
        //查看redis内该商品的剩余数量
        String balanceStr = stringRedisTemplate.opsForValue().get(key);
        int balance=Integer.parseInt(balanceStr);
        //如果剩余数量大于1
        if(balance >= 1){
            //监控key
            stringRedisTemplate.watch(key);
            //开启事务
            stringRedisTemplate.multi();
            //应该要多查一次，否则exec提交始终返回空（王鹏发现的bug）
            stringRedisTemplate.opsForValue().get(key);
            long decr = redisUtil.decr(key, count);
            //提交事务
            List<Object> list = stringRedisTemplate.exec();

            if(list == null || list.size() ==0){
                System.out.println("抢购失败");
            }else{
                itemService.updateByPreferential(
                    item.getItemPreferential()-1, itemId);
            }
            return "temaihui";
        }else{

        }
        return "temaihui";
    }



}
