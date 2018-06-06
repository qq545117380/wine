package com.zmj.wine.dao;

import com.zmj.wine.entity.Proof;

public interface ProofMapper {
    int deleteByPrimaryKey(Integer proofId);

    int insert(Proof record);

    int insertSelective(Proof record);

    Proof selectByPrimaryKey(Integer proofId);

    int updateByPrimaryKeySelective(Proof record);

    int updateByPrimaryKey(Proof record);
}