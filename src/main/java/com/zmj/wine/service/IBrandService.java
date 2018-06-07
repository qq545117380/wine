package com.zmj.wine.service;

import com.zmj.wine.entity.Brand;

import java.util.List;

public interface IBrandService {

    Brand selectByPrimaryKey(Integer brandId);

    //查询所有品牌
    List<Brand> selectAllByKindId(Integer kindId);
}
