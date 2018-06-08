package com.zmj.wine.controller;

import com.zmj.wine.entity.Item;
import com.zmj.wine.service.ItemService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * @athor hutao
 *
 **/
@Controller
@RequestMapping("/back")
public class BackController {

    @Resource
    private ItemService itemService;

    //查询所有商品信息
    @RequestMapping("/item")
    public String selectItem(Model model){
        List<Item> itemList = itemService.selectItemAll();
        model.addAttribute("itemList",itemList);

        return "/picture-list";
    }
}
