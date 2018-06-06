package com.zmj.wine.dao;

import com.zmj.wine.entity.Brand;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface BrandMapper {

    Brand selectByPrimaryKey(Integer brandId);

    //查询所有品牌
    List<Brand> selectAll();
}