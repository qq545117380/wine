package com.zmj.wine.service;

import com.zmj.wine.entity.Proof;

import java.util.List;

public interface IProofService {
    Proof selectByPrimaryKey(Integer proofId);

    //查询所有酒精度数区间
    List<Proof> selectAllByKindId(int kindId);
}
