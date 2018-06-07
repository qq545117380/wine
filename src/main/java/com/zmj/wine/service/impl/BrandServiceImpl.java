package com.zmj.wine.service.impl;

import com.zmj.wine.dao.BrandMapper;
import com.zmj.wine.entity.Brand;
import com.zmj.wine.service.IBrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class BrandServiceImpl implements IBrandService{
    @Autowired
    private BrandMapper brandDAO;

    @Override
    public Brand selectByPrimaryKey(Integer brandId) {
        return null;
    }

    @Override
    public List<Brand> selectAllByKindId(Integer kindId) {
        List<Brand> brands = brandDAO.selectAllByKindId(kindId);
        return brands;
    }

}
