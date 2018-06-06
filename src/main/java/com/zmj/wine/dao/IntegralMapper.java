package com.zmj.wine.dao;

import com.zmj.wine.entity.Integral;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface IntegralMapper {
    int deleteByPrimaryKey(Integer ihId);

    int insert(Integral integral);

    Integral selectByPrimaryKey(Integer ihId);

    int updateByPrimaryKeySelective(Integral integral);

    int selectByNum();

    //分页查询积分历史
    List<Integral> selectAllByPage(@Param("index") int index, @Param("size") int size);
}