package com.zmj.wine.dao;

import com.zmj.wine.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);


    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    //查询会员用户的所有信息
    List<User> selectAllUser();

    //后台分页查询用户信息
    List<User> selectUserByPage
    (@Param("index") int index,@Param("size") int size);

    //后台查询用户的总数量
    int selectUserNum();

    /**
     * 用户登陆/注册
     *
     */
    User selectByPrimaryKey(String userMobile);

    /**
     * 添加用户
     *
     */
    int insertUser(User record);

    /**
     * 修改密码
     * @param userPassword
     * @param userMobile
     * @return
     */
    User updatePassword(String userPassword,String userMobile);
}