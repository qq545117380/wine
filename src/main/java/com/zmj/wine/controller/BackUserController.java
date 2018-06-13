package com.zmj.wine.controller;

import com.zmj.wine.entity.User;
import com.zmj.wine.service.UserService;
import com.zmj.wine.utils.PageBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * @athor hutao
 * 后台用户管理
 **/
@Controller
@RequestMapping("/back")
public class BackUserController {

    @Resource
    private UserService userService;

    //分页查询会员用户信息
    @RequestMapping("/user/{page}")
    public String findUser(@PathVariable("page") int currentPage, Model model){
        PageBean<User> userPageBean = userService.queryUserByPage(currentPage);
        model.addAttribute("userPageBean",userPageBean);
        return "backPage/member-list";
    }
}
