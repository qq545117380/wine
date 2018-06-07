package com.zmj.wine.dao;

import com.zmj.wine.entity.Merchant;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface MerchantMapper {
    int deleteByPrimaryKey(Integer mtId);

    int insert(Merchant record);

    Merchant selectByPrimaryKey(Integer mtId);

    int selectByNum();

    //查询所有采购单(分页查询)
    List<Merchant> selectAllByPage(@Param("index") int index, @Param("size") int size );
}