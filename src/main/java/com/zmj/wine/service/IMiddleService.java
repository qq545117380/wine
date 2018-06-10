package com.zmj.wine.service;

import org.apache.ibatis.annotations.Param;

public interface IMiddleService {

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
