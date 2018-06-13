package com.zmj.wine.controller;

import com.zmj.wine.entity.Order;
import com.zmj.wine.service.OrderService;
import com.zmj.wine.utils.PageBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * @athor hutao
 **/
@Controller
@RequestMapping("/back")
public class BackOrderController {

    @Resource
    private OrderService orderService;

    //查询所有的订单
    @RequestMapping("/orders/{page}")
    public String queryAllOrder(@PathVariable("page") int page,
                                Model model){
        PageBean<Order> orderPageBean = orderService.queryAllOrder(page);
        model.addAttribute("orderPageBean",orderPageBean);
        return "backPage/order-list";
    }

    //查询已签收的订单
    @RequestMapping("/signOrder/{page}")
    public String signOrder(@PathVariable("page") int page,Model model){
        String status="已签收";
        PageBean<Order> orderPageBean =
                orderService.queryOrderByStatus(status, page);
        model.addAttribute("orderPageBean",orderPageBean);
        return "backPage/order-sign";
    }

    //查询已拒收的订单
    @RequestMapping("/rejectionOrder/{page}")
    public String rejectionOrder(@PathVariable("page") int page,Model model){
        String status="已拒收";
        PageBean<Order> orderPageBean =
                orderService.queryOrderByStatus(status, page);
        model.addAttribute("orderPageBean",orderPageBean);
        return "backPage/order-rejection";
    }

    //查询未发货的订单
    @RequestMapping("/unfilledOrder/{page}")
    public String unfilledOrder(@PathVariable("page") int page,Model model){
        String status="未发货";
        PageBean<Order> orderPageBean =
                orderService.queryOrderByStatus(status, page);
        model.addAttribute("orderPageBean",orderPageBean);
        return "backPage/order-unfilled";
    }

    //查询已退货的订单
    @RequestMapping("/returnOrder/{page}")
    public String returnOrder(@PathVariable("page") int page,Model model){
        String status="已退货";
        PageBean<Order> orderPageBean =
                orderService.queryOrderByStatus(status, page);
        model.addAttribute("orderPageBean",orderPageBean);
        return "backPage/order-return";
    }


}
