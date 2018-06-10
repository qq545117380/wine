package com.zmj.wine.service.impl;

import com.zmj.wine.dao.UsersMapper;
import com.zmj.wine.entity.Users;
import com.zmj.wine.realm.QfUsernamePasswordToken;
import com.zmj.wine.service.UsersService;
import com.zmj.wine.utils.SystemTools;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @athor
 * 后台用户
 **/
@Service
@Transactional
public class UsersServiceImpl implements UsersService{

    @Resource
    private UsersMapper usersMapper;

    //查询所有后台用户的信息
    public List<Users> findAllUsers(){
        return  usersMapper.findAllUsers();
    }

    //登录
    @Override
    public void login(String userMobile, String userPassword) throws AuthenticationException {
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(userMobile,userPassword);
        subject.login(usernamePasswordToken);
    }
}
