package com.zmj.wine.service;

import com.zmj.wine.entity.User;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @athor hutao
 **/
@Service
public interface UserService {

    //查询所有会员用户信息
    List<User> selectAllUser();

}
