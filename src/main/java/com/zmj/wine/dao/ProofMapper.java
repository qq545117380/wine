package com.zmj.wine.dao;

import com.zmj.wine.entity.Proof;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProofMapper {

    Proof selectByPrimaryKey(Integer proofId);

    //查询所有酒精度数区间
    List<Proof> selectAllByKindId(int kindId);
}