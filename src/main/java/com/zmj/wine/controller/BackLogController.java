package com.zmj.wine.controller;

import com.zmj.wine.entity.MyLog;
import com.zmj.wine.service.BackLogService;
import com.zmj.wine.utils.PageBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * @athor hutao
 * 后台日志控制器
 **/
@Controller
@RequestMapping("/back")
public class BackLogController {

    @Resource
    private BackLogService backLogService;


    @RequestMapping("/log/{page}")
    public  String  logList(@PathVariable("page")int page, Model model){
        PageBean<MyLog> myLogPageBean = backLogService.queryLogByPage(page);
        model.addAttribute("myLogPageBean",myLogPageBean);
        return "backPage/log-list";
    }

}
