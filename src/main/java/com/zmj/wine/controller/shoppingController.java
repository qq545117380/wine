package com.zmj.wine.controller;

import com.zmj.wine.entity.Item;
import com.zmj.wine.entity.Shoppingcart;
import com.zmj.wine.entity.User;
import com.zmj.wine.service.IShoppingCartService;
import com.zmj.wine.service.ItemService;
import com.zmj.wine.service.OrderService;
import com.zmj.wine.utils.JsonResult;
import com.zmj.wine.utils.SystemParam;
import com.zmj.wine.utils.SystemTools;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import com.zmj.wine.utils.RedisUtil;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/shopping")
public class shoppingController {
    @Resource
    private IShoppingCartService shoppingCartService;
    @Resource
    private OrderService orderService;
    @Resource
    private ItemService itemService;
    //购物车页面
    @Resource
    private RedisUtil redisUtil;

    @RequestMapping("/insert")
    public String insert(String itemName,
                             Integer count, HttpSession httpSession,Model model){
        Item item = itemService.selectByName(itemName);
        Shoppingcart shoppingcart = new Shoppingcart();
        User currentUser = (User)httpSession.getAttribute("currentUser");
        shoppingcart = shoppingCartService.selectByUserIdAndItemName(currentUser.getUserId(), itemName);
        if(shoppingcart!=null ) {
            shoppingCartService.updateByCount(currentUser.getUserId(), itemName, shoppingcart.getCartCount()+count);
            List<Shoppingcart> shoppingcartList = shoppingCartService.selectByUserId(currentUser.getUserId());
            httpSession.setAttribute("shoppingcartList",shoppingcartList);
            return "shoppingCart";
        }else {
            shoppingcart=new Shoppingcart();
            shoppingcart.setCartName(itemName);
            shoppingcart.setCartPrice(item.getActivityPrice());
            shoppingcart.setCartDiscounts(item.getRegularPrice()-item.getActivityPrice());
            shoppingcart.setCartCount(count);
            shoppingcart.setCartImg(item.getImg1());
            shoppingcart.setUserId(currentUser.getUserId());
            //这里并没有判断是否添加成功
            int num = shoppingCartService.insert(shoppingcart);
            if(num==0){
                List<Shoppingcart> shoppingcartList = shoppingCartService.selectByUserId(shoppingcart.getUserId());
            /*model.addAttribute("shoppingcartList",shoppingcartList);*/
                httpSession.setAttribute("shoppingcartList",shoppingcartList);
                return "shoppingCart";
            }else{
                return "/item";
            }
        }
    }
    //结算页面
    @RequestMapping("/settle")
    public String insert(){
        /*int sh = 0;
        Shoppingcart shoppingcart = new Shoppingcart();
        List<Shoppingcart> shoppingList = null;
        for(String id:shop){
            System.out.println(id);
            sh = Integer.parseInt(id);
            shoppingcart = shoppingCartService.selectByPrimaryKey(sh);
            shoppingList.add(shoppingcart);
        }
        model.addAttribute("shoppingList",shoppingList);*/
        return "Settlement";
    }
    //支付页面
    @ResponseBody
    @RequestMapping("/orderSettle")
    public Object orderSettle(String sumMoney,HttpSession session){
        int sum = Integer.parseInt(sumMoney);
        int orderNo = orderService.queryOrderNum()+1;
        JsonResult jsonResult = SystemTools.formatJsonResult(SystemParam.Login.CODE_SUCCESS, SystemParam.Login.MSG_SUCCESS);
        session.setAttribute("sumPrice",sum);
        session.setAttribute("orderNo",orderNo);
        return jsonResult;
    }
    //支付
    @RequestMapping("/settlePrice")
    public String settle(){
        return "orderSettle";
    }

    //加入购物车
    @RequestMapping("/join")
    @ResponseBody
    public JsonResult selectByUserId(String itemName, Integer count, HttpSession httpSession){
        Item item = itemService.selectByName(itemName);
        Shoppingcart shoppingcart;
        User currentUser = (User)httpSession.getAttribute("currentUser");

        shoppingcart= shoppingCartService.selectByUserIdAndItemName(currentUser.getUserId(), itemName);
        if(shoppingcart!=null ){
            shoppingCartService.updateByCount(currentUser.getUserId(),itemName,shoppingcart.getCartCount()+count);
            return SystemTools.formatJsonResult(0,"");
        }else{
            shoppingcart=new Shoppingcart();
            shoppingcart.setCartName(itemName);
            shoppingcart.setCartPrice(item.getActivityPrice());
            shoppingcart.setCartDiscounts(item.getRegularPrice()-item.getActivityPrice());
            shoppingcart.setCartCount(count);
            shoppingcart.setCartImg(item.getImg1());
            shoppingcart.setUserId(currentUser.getUserId());
            int num = shoppingCartService.insert(shoppingcart);
            JsonResult jsonResult = SystemTools.formatJsonResult(num, "添加成功");
            System.out.println("jsonResult===="+jsonResult);
            return jsonResult;
        }
    }

}
