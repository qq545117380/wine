package com.zmj.wine.controller;

import com.zmj.wine.entity.Price;
import com.zmj.wine.service.IPriceService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/price")
public class PriceController {
    @Resource
    private IPriceService priceService;

    @RequestMapping("/list")
    public String selectAllByKindId(int kindId,Model model){
        List<Price> priceList = priceService.selectAllByKindId(kindId);
        model.addAttribute("priceList");
        return "";
    }

}
