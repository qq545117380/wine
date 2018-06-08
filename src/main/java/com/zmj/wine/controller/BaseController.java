package com.zmj.wine.controller;

import com.zmj.wine.entity.*;
import com.zmj.wine.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.*;

@Controller
@RequestMapping("/base")
public class BaseController {
    @Resource
    private IKindService kindService;

    @Resource
    private IBrandService brandService;

    @Resource
    private IYieldlyService yieldlyService;

    @Resource
    private IFlavourService flavourService;

    @Resource
    private IPriceService priceService;

    @Resource
    private IProofService proofService;

    @Resource
    private IContentService contentService;

    @Resource
    private IMiddleService middleService;

    @Resource
    private ItemService itemService;

    @RequestMapping("/list")
    public String selectAllOption(String kindName, Model model){
        System.out.println(kindName+kindName.length());
        Integer kindId = kindService.selectIdByName(kindName);
        List<Brand> brandList = brandService.selectAllByKindId(kindId);
        List<Yieldly> yieldlyList = yieldlyService.selectAllByKindId(kindId);
        List<Flavour> flavourList = flavourService.selectAllByKindId(kindId);
        List<Proof> proofList= proofService.selectAllByKindId(kindId);
        List<Content> contentList = contentService.selectAllByKindId(kindId);
        List<Price> priceList = priceService.selectAllByKindId(kindId);
        Map<String, List> map = new LinkedHashMap<>();
        map.put("brandList",brandList);
        map.put("yieldlyList",yieldlyList);
        map.put("flavourList",flavourList);
        map.put("proofList",proofList);
        map.put("contentList",contentList);
        map.put("priceList",priceList);

        int[] ints = middleService.selectAllByKindId(kindId);
        List<Item> itemList = new ArrayList<>();
        for(int i=0;i<ints.length;i++){
            Item item = itemService.selectByPrimaryKey(i);
            itemList.add(item);
        }
        map.put("itemList",itemList);

        model.addAttribute("map",map);
        switch (kindName){
            case "白酒":
                return "pinpaibaijiu";
            case "葡萄酒":
                return "putaojiu";
            case "洋酒":
                return "yangjiu";
           default:
               return "";
        }
    }
}
