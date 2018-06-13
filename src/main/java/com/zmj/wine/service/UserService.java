package com.zmj.wine.service;

import com.zmj.wine.entity.User;
import com.zmj.wine.utils.PageBean;
import org.apache.shiro.authc.AuthenticationException;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @athor hutao
 **/
@Service
public interface UserService {

    //查询所有会员用户信息
    List<User> selectAllUser();

    //后台分页查询用户信息
    PageBean<User> queryUserByPage(int currentPage);

    //后台查询用户的总数量
    int queryUserNum();
    /**
     * 登录
     */
    void login(String userMobile, String userPassword) throws AuthenticationException;

    /**
     * 注册
     * @param userMobile
     * @param userPassword
     */
    void save(String userMobile, String userPassword);

}
