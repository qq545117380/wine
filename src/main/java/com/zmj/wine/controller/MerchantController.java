package com.zmj.wine.controller;

import com.zmj.wine.entity.Merchant;
import com.zmj.wine.service.IMerchantService;
import com.zmj.wine.utils.PageBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/merchant")
public class MerchantController {
    @Resource
    private IMerchantService merchantService;

    @RequestMapping("/list")
    public String selectAllByPage(int currentPage, Model model){
        PageBean<Merchant> merchantPageBean = merchantService.selectAllByPage(currentPage);
        model.addAttribute("merchantPageBean",merchantPageBean);
        return "";
    }

}
