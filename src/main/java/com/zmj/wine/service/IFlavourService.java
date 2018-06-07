package com.zmj.wine.service;

import com.zmj.wine.entity.Flavour;

import java.util.List;

public interface IFlavourService {
    Flavour selectByPrimaryKey(Integer flavourId);

    //查询所有酒类型
    List<Flavour> selectAllByKindId(int kindId);
}
