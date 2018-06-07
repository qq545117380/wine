package com.zmj.wine.service.impl;

import com.zmj.wine.dao.IntegralMapper;
import com.zmj.wine.entity.Integral;
import com.zmj.wine.service.IIntegralService;
import com.zmj.wine.utils.PageBean;
import com.zmj.wine.utils.SystemUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Transactional
@Service
public class IntegralServiceImpl implements IIntegralService{
    @Resource
    private IntegralMapper integralDAO;

    @Override
    public String deleteByPrimaryKey(Integer ihId) {
        int num = integralDAO.deleteByPrimaryKey(ihId);
        if(num>0){
            return "删除成功";
        }else {
            return "删除失败";
        }
    }

    @Override
    public String insert(Integral integral) {
        int num = integralDAO.insert(integral);
        if(num>0){
            return "删除成功";
        }else {
            return "删除成功";
        }
    }

    @Override
    public Integral selectByPrimaryKey(Integer ihId) {
        Integral integral = integralDAO.selectByPrimaryKey(ihId);
        return integral;
    }

    @Override
    public PageBean<Integral> selectAllByPage(int currentPage) {
        int size=SystemUtils.INTEGRAL_SIZE;
        int count = integralDAO.selectByNum();
        //总页数
        int pageCount = count % count/ size ==0 ? size : count/size+1;

        List<Integral> integrals = integralDAO.selectAllByPage((currentPage - 1) * size, size);
        //将当前页面数据、当前页面数、总页数放入pageBean对象
        PageBean page = new PageBean();
        page.setData(integrals);
        page.setCurrentPage(currentPage);
        page.setTotalPage(pageCount);
        return page;
    }
}
