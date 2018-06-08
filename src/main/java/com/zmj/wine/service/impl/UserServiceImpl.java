package com.zmj.wine.service.impl;

import com.zmj.wine.dao.UserMapper;
import com.zmj.wine.entity.User;
import com.zmj.wine.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @athor hutao
 **/
@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    //查询所有会员用户信息
    @Override
    public List<User> selectAllUser() {
        return userMapper.selectAllUser();
    }

    //登录
    @Override
    public void login(String userMobile, String userPassword) throws AuthenticationException {
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(userMobile,userPassword);
        subject.login(usernamePasswordToken);
    }
    //
    @Override
    public User save(String userMobile, String userPassword) throws Exception {
        User user = new User();
        user.setUserMobile(userMobile);
        user.setUserPassword(userPassword);
        userMapper.insertUser(user);
        return user;
    }

}
