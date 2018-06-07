package com.zmj.wine.controller;

import com.zmj.wine.entity.Kind;
import com.zmj.wine.service.IKindService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/kind")
public class KindController {
    @Resource
    private IKindService kindService;

    @RequestMapping("/list")
    public String selectAll(Model model){
        List<Kind> kindList = kindService.selectAll();
        model.addAttribute("kindList",kindList);
        return "pageHome";
    }

}
