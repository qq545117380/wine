package com.zmj.wine.dao;

import com.zmj.wine.entity.Item;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ItemMapper {
    int deleteByPrimaryKey(Integer itemId);

    int insert(Item record);

    int insertSelective(Item record);

    Item selectByPrimaryKey(Integer itemId);

    int updateByPrimaryKeySelective(Item record);

    int updateByPrimaryKey(Item record);

    //后台查询所有的商品
    List<Item> selectItemAll();

    //后台分页查询商品信息
    List<Item> selectItemByPage
    (@Param("index")int index, @Param("size")int size );

    //查询商品的总数量
    int selectItemNum();

    List<Item> selectByTerm(@Param("kindId") Integer kindId,@Param("subclassId") Integer subclassId,
                            @Param("brandId") Integer brandId,@Param("yieldlyId") Integer yieldlyId,
                            @Param("flavourId") Integer flavourId,@Param("proofId") Integer proofId,
                            @Param("contentId") Integer contentId,@Param("priceId") Integer priceId);
}