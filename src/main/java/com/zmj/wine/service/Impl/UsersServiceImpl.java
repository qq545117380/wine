package com.zmj.wine.service.Impl;

import com.zmj.wine.dao.UsersMapper;
import com.zmj.wine.entity.Users;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @athor hutao
 * 后台用户
 **/
@Service
@Transactional
public class UsersServiceImpl {

    @Resource
    private UsersMapper usersMapper;

    //查询所有后台用户的信息
    public List<Users> findAllUsers(){
        return  usersMapper.findAllUsers();
    }
}
