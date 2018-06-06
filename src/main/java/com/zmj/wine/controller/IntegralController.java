package com.zmj.wine.controller;

import com.zmj.wine.entity.Integral;
import com.zmj.wine.service.IIntegralService;
import com.zmj.wine.utils.PageBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/integral")
public class IntegralController {
    @Resource
    private IIntegralService integralService;

    //分页查询
    @RequestMapping("/list")
    public String selectAllByPage(int currentPage, Model model){
        PageBean<Integral> integralList = integralService.selectAllByPage(currentPage);
        model.addAttribute("integralList",integralList);
        return "";
    }

    @RequestMapping("/delete")
    public String deleteByPrimaryKey(int ihId){
        final String result = integralService.deleteByPrimaryKey(ihId);
        return "";
    }

    @RequestMapping("/insert")
    public String insert(Integral integral){
        String result = integralService.insert(integral);
        return "";
    }

}
