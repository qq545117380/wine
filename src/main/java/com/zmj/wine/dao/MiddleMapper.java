package com.zmj.wine.dao;

import com.zmj.wine.entity.Middle;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

//中间表
@Repository
public interface MiddleMapper {
    int deleteByPrimaryKey(Integer id);

    int insertSelective(Middle record);

    Middle selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Middle record);

    int[] selectByTerm(@Param("kindId") Integer kindId, @Param("subclassId") Integer subclassId,
                       @Param("brandId") Integer brandId, @Param("yieldlyId") Integer yieldlyId,
                       @Param("flavourId") Integer flavourId, @Param("proofId") Integer proofId,
                       @Param("contentId") Integer contentId, @Param("priceId") Integer priceId);

    int[] selectAllByKindId(Integer kindId);

}