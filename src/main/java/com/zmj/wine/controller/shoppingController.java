package com.zmj.wine.controller;

import com.zmj.wine.entity.Item;
import com.zmj.wine.entity.Shoppingcart;
import com.zmj.wine.entity.User;
import com.zmj.wine.service.IShoppingCartService;
import com.zmj.wine.service.ItemService;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/shopping")
public class shoppingController {
    @Resource
    private IShoppingCartService shoppingCartService;

    @Resource
    private ItemService itemService;
    //购物车页面
    @RequestMapping("/insert")
    public String insert(String itemName,
                             Integer count, HttpSession httpSession,Model model){
        Item item = itemService.selectByName(itemName);
        Shoppingcart shoppingcart = new Shoppingcart();
        User currentUser = (User)httpSession.getAttribute("currentUser");
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

    //加入购物车
    @RequestMapping("/join")
    public String selectByUserId(String itemName, Integer count,HttpSession httpSession){
        Item item = itemService.selectByName(itemName);
        Shoppingcart shoppingcart = new Shoppingcart();
        User currentUser = (User)httpSession.getAttribute("currentUser");
        shoppingcart.setCartName(itemName);
        shoppingcart.setCartCount(item.getActivityPrice());
        shoppingcart.setCartDiscounts(item.getRegularPrice()-item.getActivityPrice());
        shoppingcart.setCartCount(count);
        shoppingcart.setCartImg(item.getImg1());
        shoppingcart.setUserId(currentUser.getUserId());
        shoppingCartService.insert(shoppingcart);
        return "/item";
    }
}
