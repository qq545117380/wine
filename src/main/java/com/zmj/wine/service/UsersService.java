package com.zmj.wine.service;

import com.zmj.wine.entity.Users;
import org.apache.shiro.authc.AuthenticationException;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @athor hutao
 * 后台用户
 **/
@Service
public interface UsersService {

    //查询所有后台用户的信息
    List<Users> findAllUsers();
    /**
     * 登录
     */
    void login(String username, String password) throws AuthenticationException;

}
