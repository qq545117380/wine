package com.zmj.wine.service;

import com.zmj.wine.entity.Yieldly;

import java.util.List;

public interface IYieldlyService {
    Yieldly selectByPrimaryKey(Integer yieldlyId);

    //查询所有酒产地
    List<Yieldly> selectAllByKindId(int kindId);
}
