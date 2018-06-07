package com.zmj.wine.service.impl;

import com.zmj.wine.dao.MerchantMapper;
import com.zmj.wine.entity.Integral;
import com.zmj.wine.entity.Merchant;
import com.zmj.wine.service.IMerchantService;
import com.zmj.wine.utils.PageBean;
import com.zmj.wine.utils.SystemUtils;

import javax.annotation.Resource;
import java.util.List;

public class MerchantServiceImpl implements IMerchantService{
    @Resource
    private MerchantMapper merchantDAO;

    @Override
    public int deleteByPrimaryKey(Integer mtId) {
        return 0;
    }

    @Override
    public int insert(Merchant record) {
        return 0;
    }

    @Override
    public Merchant selectByPrimaryKey(Integer mtId) {
        return null;
    }


    @Override
    public PageBean<Merchant> selectAllByPage(int currentPage) {
        int size= SystemUtils.INTEGRAL_SIZE;
        int count = merchantDAO.selectByNum();
        //总页数
        int pageCount = count % count/ size ==0 ? size : count/size+1;

        List<Merchant> merchants = merchantDAO.selectAllByPage((currentPage - 1) * size, size);
        //将当前页面数据、当前页面数、总页数放入pageBean对象
        PageBean page = new PageBean();
        page.setData(merchants);
        page.setCurrentPage(currentPage);
        page.setTotalPage(pageCount);
        return page;
    }
}
