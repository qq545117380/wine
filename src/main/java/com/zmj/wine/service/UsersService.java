package com.zmj.wine.service;

import com.zmj.wine.entity.Users;
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
}
