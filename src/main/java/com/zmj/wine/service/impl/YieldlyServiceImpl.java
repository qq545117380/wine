package com.zmj.wine.service.impl;

import com.zmj.wine.dao.YieldlyMapper;
import com.zmj.wine.entity.Yieldly;
import com.zmj.wine.service.IYieldlyService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Service
@Transactional
public class YieldlyServiceImpl implements IYieldlyService{
    @Resource
    private YieldlyMapper yieldlyDAO;
    @Override
    public Yieldly selectByPrimaryKey(Integer yieldlyId) {
        return null;
    }

    @Override
    public List<Yieldly> selectAllByKindId(int kindId) {
        List<Yieldly> yieldlyList = yieldlyDAO.selectAllByKindId(kindId);
        return yieldlyList;
    }
}
