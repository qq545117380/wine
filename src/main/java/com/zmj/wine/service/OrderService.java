package com.zmj.wine.service;

import com.zmj.wine.entity.Order;
import com.zmj.wine.utils.PageBean;
import org.springframework.stereotype.Service;

/**
 * @athor hutao
 **/
@Service
public interface OrderService {

    //查询总订单数量
    int queryOrderNum();

    //后台查询订单信息
   PageBean<Order> queryAllOrder( int currentPage);

    //后台根据状态查询订单信息
    PageBean<Order> queryOrderByStatus( String status,int currentPage);

}
