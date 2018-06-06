package com.zmj.wine.service;

import com.zmj.wine.entity.Integral;
import com.zmj.wine.utils.PageBean;

import java.util.List;

public interface IIntegralService {
    String deleteByPrimaryKey(Integer ihId);

    String insert(Integral integral);

    Integral selectByPrimaryKey(Integer ihId);

    //分页查询积分历史
    PageBean<Integral> selectAllByPage(int currentPage);
}
