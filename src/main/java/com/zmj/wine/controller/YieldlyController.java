package com.zmj.wine.controller;

import com.zmj.wine.entity.Yieldly;
import com.zmj.wine.service.IYieldlyService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/yieldly")
public class YieldlyController {
    @Resource
    private IYieldlyService yieldlyService;

    @RequestMapping("/list")
    public String selectAllByKindId(Integer kindId, Model model){
        List<Yieldly> yieldlyList = yieldlyService.selectAllByKindId(kindId);
        model.addAttribute("yieldlyList",yieldlyList);
        return "pinpaibaijiu";
    }
}
