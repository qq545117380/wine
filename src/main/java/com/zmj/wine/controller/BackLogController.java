package com.zmj.wine.controller;

import com.zmj.wine.entity.MyLog;
import com.zmj.wine.service.BackLogService;
import com.zmj.wine.utils.PageBean;
import io.goeasy.GoEasy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

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
        GoEasy goEasy = new GoEasy("BC-e5602ccccbf94f8e8839e0014e43ec80");
        goEasy.publish("zmj", "你有一个新的订单");
        return "backPage/log-list";
    }

    //批量删除日志
    @RequestMapping("/log/delete")
    @ResponseBody
    public String delete(@RequestBody List<Object> list){
        for(int i = 0 ; i <list.size();i++){
            int id = (int) list.get(i);
            int log = backLogService.deleteLog(id);
//            System.out.println(id);
        }
        return "ok";
    }

}
