package com.zmj.wine.dao;

import com.zmj.wine.entity.Middle;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

//中间表
@Repository
public interface MiddleMapper {
    int deleteByPrimaryKey(Integer id);

    int insertSelective(Middle record);

//    Middle selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Middle record);

    //多条件查询单品信息
    int[] selectByTerm(@Param("kindId") Integer kindId,
                       @Param("brandId") Integer brandId, @Param("yieldlyId") Integer yieldlyId,
                       @Param("flavourId") Integer flavourId, @Param("proofId") Integer proofId,
                       @Param("contentId") Integer contentId, @Param("priceId") Integer priceId);

    int[] selectAllByKindId(Integer kindId);

    //根据多条件查询产地
    int[] selectYieldlyIdByTerm(@Param("kindId") Integer kindId, @Param("brandId") Integer brandId,
                                @Param("flavourId") Integer flavourId, @Param("proofId") Integer proofId,
                                @Param("contentId") Integer contentId, @Param("priceId") Integer priceId);

    //根据多条件查询酒香型（类型）
    int[] selectFlavourIdByTerm(@Param("kindId") Integer kindId, @Param("brandId") Integer brandId,
                                @Param("yieldlyId") Integer yieldlyId, @Param("proofId") Integer proofId,
                                @Param("contentId") Integer contentId, @Param("priceId") Integer priceId);

    //<!--根据多条件查询酒度数-->
    int[] selectProofIdByTerm(@Param("kindId") Integer kindId, @Param("brandId") Integer brandId,
                                @Param("yieldlyId") Integer yieldlyId, @Param("flavourId") Integer flavourId,
                                @Param("contentId") Integer contentId, @Param("priceId") Integer priceId);


    int[] selectContentIdByTerm(@Param("kindId") Integer kindId, @Param("brandId") Integer brandId,
                              @Param("yieldlyId") Integer yieldlyId, @Param("flavourId") Integer flavourId,
                              @Param("proofId") Integer proofId, @Param("priceId") Integer priceId);


    int[] selectPriceByTerm(@Param("kindId") Integer kindId, @Param("brandId") Integer brandId,
                                @Param("yieldlyId") Integer yieldlyId, @Param("flavourId") Integer flavourId,
                                @Param("proofId") Integer proofId,@Param("contentId") Integer contentId);

}