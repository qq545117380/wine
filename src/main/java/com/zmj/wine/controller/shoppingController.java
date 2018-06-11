package com.zmj.wine.controller;

import com.zmj.wine.entity.Item;
import com.zmj.wine.entity.Price;
import com.zmj.wine.entity.Shoppingcart;
import com.zmj.wine.entity.User;
import com.zmj.wine.service.IShoppingCartService;
import com.zmj.wine.service.ItemService;
import com.zmj.wine.utils.JsonResult;
import com.zmj.wine.utils.SystemTools;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

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

    @RequestMapping("/insert")
    public String insert(String itemName,
                             Integer count, HttpSession httpSession){
        Item item = itemService.selectByName(itemName);
        Shoppingcart shoppingcart = new Shoppingcart();

        User currentUser = (User)httpSession.getAttribute("currentUser");
        //如果不为空就将购物车内的商品插入数据库，如果为空酒存入cookie
        if(currentUser!=null && currentUser.equals("")){
            shoppingcart.setUserId(currentUser.getUserId());
        }

        shoppingcart.setCartName(itemName);
        shoppingcart.setCartCount(item.getActivityPrice());
        shoppingcart.setCartDiscounts(item.getRegularPrice()-item.getActivityPrice());
        shoppingcart.setCartCount(count);
        shoppingcart.setCartImg(item.getImg1());

        int num = shoppingCartService.insert(shoppingcart);
        if(num==0){
            List<Shoppingcart> shoppingcartList = shoppingCartService.selectByUserId(shoppingcart.getUserId());
            return "shoppingCart";
        }
        return "item";
    }

    @RequestMapping("/list")
    public String selectByUserId(Integer userId, Model model){
        List<Shoppingcart> shoppingcartList = shoppingCartService.selectByUserId(userId);
        model.addAttribute("shoppingcartList",shoppingcartList);
        return "shoppingcart";
    }
}
