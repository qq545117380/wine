package com.zmj.wine.service.impl;

import com.zmj.wine.dao.OrderMapper;
import com.zmj.wine.entity.Order;
import com.zmj.wine.service.OrderService;
import com.zmj.wine.utils.PageBean;
import com.zmj.wine.utils.SystemUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @athor hutao
 **/
@Service
@Transactional
public class OrderServiceImpl implements OrderService {
    @Resource
    private OrderMapper orderMapper;

    @Override
    public int queryOrderNum() {
        return orderMapper.selectOrderNum();
    }

    //后台查询所有订单信息
    @Override
    public PageBean<Order> queryAllOrder(int page) {
        int sum = orderMapper.selectOrderNum();
        int size = SystemUtils.PAGE_SIZE;
        int sumPage= sum % size ==0? sum /size :sum/size+1;
        List<Order> orders = orderMapper.selectAllOrder
                ((page - 1) * size, size);
        PageBean pageBean = new PageBean();
        pageBean.setSum(sum);
        pageBean.setData(orders);
        pageBean.setTotalPage(sumPage);
        pageBean.setCurrentPage(page);
        return pageBean;
    }

    //后台根据订单状态查询订单信息
    @Override
    public PageBean<Order> queryOrderByStatus(String status, int page) {
        int sum=orderMapper.selectOrderNumByStatus(status);
        int size=SystemUtils.PAGE_SIZE;
        int sumPage= sum % size ==0? sum /size :sum/size+1;
        List<Order> orders = orderMapper.selectOrderByStatus
                (status,(page-1)*size,size);
        PageBean pageBean = new PageBean();
        pageBean.setSum(sum);
        pageBean.setData(orders);
        pageBean.setTotalPage(sumPage);
        pageBean.setCurrentPage(page);
        return pageBean;
    }



}
