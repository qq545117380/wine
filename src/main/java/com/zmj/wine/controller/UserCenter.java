package com.zmj.wine.controller;

import com.zmj.wine.entity.User;
import com.zmj.wine.service.OrderService;
import com.zmj.wine.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/center")
public class UserCenter {
    @Resource
    private OrderService orderService;
    @Resource
    private UserService userServiceImpl;
    @RequestMapping("/userCenter")
    public String userCenter(HttpSession httpSession,Model model){
        User user = (User) SecurityUtils.getSubject().getSession().getAttribute("user");
        int id = user.getUserId();
        return "userCenter";
    }
}
