package com.zmj.wine.controller;

import com.zmj.wine.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/center")
public class UserCenter {
    @Resource
    private UserService userServiceImpl;
    @RequestMapping("/userCenter")
    public String userCenter(HttpSession httpSession,Model model){
        return "userCenter";
    }
}
