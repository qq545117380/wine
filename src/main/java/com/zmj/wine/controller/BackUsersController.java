package com.zmj.wine.controller;

import com.zmj.wine.entity.Users;
import com.zmj.wine.service.UsersService;
import com.zmj.wine.utils.PageBean;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
public class BackUsersController {
    //定义日志对象
    private Logger logger = LoggerFactory.getLogger(BackUsersController.class);

    @Resource
    private UsersService usersService;

    @RequestMapping("/users/{page}")
    public String queryUsers(@PathVariable("page")int page, Model model){
        PageBean<Users> usersPageBean = usersService.queryUsersByPage(page);
        model.addAttribute("usersPageBean",usersPageBean);
        return "backPage/admin-list";
    }

    //预添加管理员
    @RequestMapping("/addUser")
    public String addUser(){
            return "backPage/admin-add";
    }
    //添加用户
    @RequestMapping("/addUsers")
    public String addUsers(Users users){
        int ha = usersService.addUsers(users);
        if (ha==0){
            logger.debug("恭喜用户添加成功");
        }
        return "redirect:/back/users/1";
    }

    //删除管理员@PathVariable("userId")
    @RequestMapping("/deleteUser")
    public String deletUser( String userId){
        int usersId = Integer.parseInt(userId);
//        System.out.println(userId);
        int user = usersService.deleteUser(usersId);
        if (user==0){
            logger.info("恭喜用户删除成功");
        }
        return "redirect:/back/users/1";
    }

}
