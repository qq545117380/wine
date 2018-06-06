package com.zmj.wine.dao;

import com.zmj.wine.entity.RolePermissions;
import org.springframework.stereotype.Repository;

@Repository
public interface RolePermissionsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RolePermissions record);

    int insertSelective(RolePermissions record);

    RolePermissions selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RolePermissions record);

    int updateByPrimaryKey(RolePermissions record);
}