package com.zmj.wine.dao;

import com.zmj.wine.entity.Order;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderMapper {
    int deleteByPrimaryKey(Integer orderId);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer orderId);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);

    //后台分页查询所有订单
    List<Order> selectAllOrder
    (@Param("index") int index,@Param("size") int size);

    //查询订单的总数量
    int selectOrderNum();

    //根据订单状态查询总数
    int selectOrderNumByStatus(String status);


    //后台根据订单状态查询订单信息
    List<Order> selectOrderByStatus
    (@Param("status") String status,@Param("index") int index,@Param("size") int size);

}