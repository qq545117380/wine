package com.zmj.wine.service;

import com.zmj.wine.entity.Merchant;
import com.zmj.wine.utils.PageBean;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Page;

import java.util.List;

public interface IMerchantService {
    int deleteByPrimaryKey(Integer mtId);

    int insert(Merchant record);

    Merchant selectByPrimaryKey(Integer mtId);


    //查询所有采购单(分页查询)
    PageBean<Merchant> selectAllByPage(int currentPage );
}
