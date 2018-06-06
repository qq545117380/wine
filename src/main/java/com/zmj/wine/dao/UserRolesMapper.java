package com.zmj.wine.dao;

import com.zmj.wine.entity.UserRoles;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRolesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserRoles record);

    int insertSelective(UserRoles record);

    UserRoles selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserRoles record);

    int updateByPrimaryKey(UserRoles record);
}