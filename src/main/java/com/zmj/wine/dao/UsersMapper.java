package com.zmj.wine.dao;

import com.zmj.wine.entity.Users;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UsersMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);

    //查询所有后台用户
    List<Users>  findAllUsers();

    //分页查询管理员总数
    int selectUsersNum();

    //分页查询用户
    List<Users> selectUsersByPage
    (@Param("index") int index,@Param("size") int size);

    //根据用户姓名 查询用户对象
    Users checkUsername(String username);

    //根据用户名字 查询角色
    List<String> queryRoles(String username);

    //根据用户名字 查询盐
    String querySalt(String username);
}