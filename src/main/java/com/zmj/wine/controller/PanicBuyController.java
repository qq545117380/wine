package com.zmj.wine.controller;

import com.zmj.wine.entity.Item;
import com.zmj.wine.entity.Shoppingcart;
import com.zmj.wine.entity.User;
import com.zmj.wine.service.IShoppingCartService;
import com.zmj.wine.service.ItemService;
import com.zmj.wine.utils.RedisUtil;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

//“去结算”接口
@Controller
@RequestMapping("/panicBuy")
public class PanicBuyController {
    @Resource
    private RedisUtil redisUtil;

    @Resource
    private ItemService itemService;

    @Resource
    private IShoppingCartService shoppingCartService;

    @Resource
    private StringRedisTemplate stringRedisTemplate;

    @RequestMapping("/buy")
    public String panicBuying( Integer itemId, String itemName,Integer count,
                              HttpSession httpSession, Model model){
        //抢购商品的总数库存
        String key="PBRepo"+String.valueOf(itemId);
        //销量
        String key2="PBSales"+String.valueOf(itemId);
        Item item=itemService.selectByName(itemName);
        String repoNum;
        String salesNum;
        try{
            repoNum = redisUtil.get(key).toString();
        }catch (NullPointerException e){
            synchronized (key){
                try{
                    repoNum = redisUtil.get(key).toString();
                }catch (NullPointerException e2){
                    //设置商品库存
                    stringRedisTemplate.opsForValue().set(key,String.valueOf(item.getItemPreferential()));
                    stringRedisTemplate.opsForValue().set(key2,"0");
                    //设置X（库存数）个这个单品
                    for(int i=1;i<=item.getItemPreferential();i++){
                        stringRedisTemplate.opsForValue().set("BP"+i,"1");
                    }
                }
            }
        }

        //开启redis事务支持
        stringRedisTemplate.setEnableTransactionSupport(true);
        //商品库存
        Integer goodsRepo = Integer.parseInt(stringRedisTemplate.opsForValue().get(key));
        //销量数
        Integer goodsSales = Integer.parseInt(stringRedisTemplate.opsForValue().get(key2));
        //如果销量小于库存
        if(goodsSales<goodsRepo){
            //监控key
            stringRedisTemplate.watch(key);
            //开启事务
            stringRedisTemplate.multi();
            //将redis内的库存量减一
            stringRedisTemplate.opsForValue().increment(key, -count);
            //应该要多查一次，否则exec提交始终返回空（王鹏提示的bug）
            stringRedisTemplate.opsForValue().get(key);
//            int i = Integer.parseInt(iStr);
            //设置商品的过期时间为10分钟
            stringRedisTemplate.expire("BP"+(goodsSales+1),10*60, TimeUnit.SECONDS);

            //提交事务
            List<Object> list = stringRedisTemplate.exec();
            if(list == null || list.size() ==0){
                model.addAttribute("msg","fail");
                return "temaihui";
            }else{
                Shoppingcart shoppingcart = new Shoppingcart();
                User currentUser = (User)httpSession.getAttribute("currentUser");
                shoppingcart.setCartName(itemName);
                shoppingcart.setCartPrice(item.getActivityPrice());
                shoppingcart.setCartDiscounts(item.getRegularPrice()-item.getActivityPrice());
                shoppingcart.setCartCount(count);
                shoppingcart.setCartImg(item.getImg1());
                shoppingcart.setUserId(currentUser.getUserId());
                int num = shoppingCartService.insert(shoppingcart);
                model.addAttribute("msg","success");
                List<Shoppingcart> shoppingcartList = shoppingCartService.selectByUserId(shoppingcart.getUserId());
                model.addAttribute("shoppingcartList",shoppingcartList);
                return "shoppingCart";
            }
        }else{
            model.addAttribute("msg","fail");
            model.addAttribute("item",item);
            return "temaihui";
        }
    }
}
