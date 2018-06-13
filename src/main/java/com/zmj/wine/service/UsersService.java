package com.zmj.wine.service;

import com.zmj.wine.entity.Users;
import com.zmj.wine.utils.PageBean;
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

    //分页查询后台
    PageBean<Users> queryUsersByPage(int currentPage);

    //查询用户的总数量
    int queryUsersNum();

    //后台添加用户
    int addUsers(Users users);

    //后台删除用户
    int deleteUser(int id);

    //后台根据用户id 查询用户
    Users queryUserById(int id);

    //后台修改用户信息
    int updateUser(Users users);

    /**
     * 登录
     */
    void login(String username, String password) throws AuthenticationException;

}
