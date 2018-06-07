package com.zmj.wine.controller;

import com.zmj.wine.entity.Flavour;
import com.zmj.wine.service.IFlavourService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/flavour")
public class FlavourController {
    @Resource
    private IFlavourService flavourService;

    @RequestMapping("/list")
    public String selectAllByKindId(int kindId, Model model){
        List<Flavour> flavourList = flavourService.selectAllByKindId(kindId);
        model.addAttribute("flavourList",flavourList);
        return "";
    }
}
