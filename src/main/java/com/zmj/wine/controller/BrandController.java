package com.zmj.wine.controller;

import com.zmj.wine.entity.Brand;
import com.zmj.wine.service.IBrandService;
import com.zmj.wine.service.impl.BrandServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/brand")
public class BrandController {
    @Autowired
    private IBrandService brandService;

    @RequestMapping("/list")
    public String selectAllByKindId(Integer kindId, Model model){
        List<Brand> brandList = brandService.selectAllByKindId(kindId);
        model.addAttribute("brandList",brandList);
        return "pinpaibaijiu";
    }
}
