package com.zmj.wine.service.impl;

import com.zmj.wine.dao.UserMapper;
import com.zmj.wine.entity.User;
import com.zmj.wine.service.UserService;
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

}
