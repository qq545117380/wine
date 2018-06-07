package com.zmj.wine.controller;

import com.zmj.wine.entity.Item;
import com.zmj.wine.service.IMiddleService;
import com.zmj.wine.service.ItemService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/middle")
public class MiddleController {
    @Resource
    private IMiddleService middleService;

    @Resource
    private ItemService itemService;

    @RequestMapping("/trem")
    public String selectItemByTrem(Integer kindId, Integer subclassId,
                                   Integer brandId, Integer yieldlyId,
                                   Integer flavourId, Integer proofId,
                                   Integer contentId, Integer priceId,
                                   Model model){
        int[] ints = middleService.selectByTerm(kindId, subclassId, brandId, yieldlyId,
                flavourId, proofId, contentId, priceId);
        List<Item> itemList = new ArrayList<>();
        for(int i=0;i<ints.length;i++){
            Item item = itemService.selectByPrimaryKey(i);
            itemList.add(item);
        }
        model.addAttribute("itemList",itemList);
        return "pinpaibaijiu";
    }
}
