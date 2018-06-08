package com.zmj.wine.service;

import org.apache.ibatis.annotations.Param;

public interface IMiddleService {

    int[] selectByTerm(@Param("kindId") Integer kindId, @Param("subclassId") Integer subclassId,
                       @Param("brandId") Integer brandId, @Param("yieldlyId") Integer yieldlyId,
                       @Param("flavourId") Integer flavourId, @Param("proofId") Integer proofId,
                       @Param("contentId") Integer contentId, @Param("priceId") Integer priceId);

    int[] selectAllByKindId(Integer kindId);
}
