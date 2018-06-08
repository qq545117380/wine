package com.zmj.wine.service.impl;

import com.zmj.wine.dao.KindMapper;
import com.zmj.wine.entity.Kind;
import com.zmj.wine.service.IKindService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class KindServiceImpl implements IKindService{
    @Resource
    private KindMapper kindDAO;

    @Override
    public Kind selectByPrimaryKey(Integer kindId) {
        Kind kind = kindDAO.selectByPrimaryKey(kindId);
        return kind;
    }

    @Override
    public List<Kind> selectAll() {
        List<Kind> kindList = kindDAO.selectAll();
        return kindList;
    }

    @Override
    public Integer selectIdByName(String kindName) {
        Integer kindId = kindDAO.selectIdByName(kindName);
        return kindId;
    }
}
