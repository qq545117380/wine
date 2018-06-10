package com.zmj.wine.service;

import com.zmj.wine.entity.User;
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
