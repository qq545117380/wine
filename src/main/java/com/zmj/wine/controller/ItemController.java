package com.zmj.wine.controller;

import com.zmj.wine.entity.Item;
import com.zmj.wine.entity.Relevance;
import com.zmj.wine.service.IRelevanceService;
import com.zmj.wine.service.ItemService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/item")
public class ItemController {
    @Resource
    private ItemService itemService;

    @Resource
    private IRelevanceService relevanceService;

    @RequestMapping("/byId")
    public String selectItem(Integer itemId, Model model) {
        Item item = itemService.selectByPrimaryKey(itemId);
        model.addAttribute("item", item);
        List<Relevance> relevanceList = relevanceService.selectItemByItemId(itemId);
        model.addAttribute("relevanceList",relevanceList);
        return "item";
    }

    @RequestMapping("/byName")
    public String selectItem(String itemName, Model model) {
        Item item = itemService.selectByName(itemName);
        model.addAttribute("item", item);
        List<Relevance> relevanceList = relevanceService.selectItemByItemId(item.getItemId());
        model.addAttribute("relevanceList",relevanceList);
        return "item";
    }
}
