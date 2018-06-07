package com.zmj.wine.service.impl;

import com.zmj.wine.dao.FlavourMapper;
import com.zmj.wine.entity.Flavour;
import com.zmj.wine.service.IFlavourService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class FlavourServiceImpl implements IFlavourService{
    @Resource
    private FlavourMapper flavourDAO;

    @Override
    public Flavour selectByPrimaryKey(Integer flavourId) {
        return null;
    }

    @Override
    public List<Flavour> selectAllByKindId(int kindId) {
        List<Flavour> flavourList = flavourDAO.selectAllByKindId(kindId);
        return flavourList;
    }
}
