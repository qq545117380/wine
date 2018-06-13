package com.zmj.wine.entity;

import java.util.Date;

public class Order {
    private Integer orderId;

    private Integer userId;

    private String orderNo;

    private Date orderTime;

    private String orderName;

    private String orderAddress;

    private Integer orderPrice;

    private Integer orderDiscounts;

    private Integer orderNum;

    private Integer orderCarriage;

    private String orderPayWay;

    private String orderImg;

    private String orderStatus;

    private String orderExplain;

    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo == null ? null : orderNo.trim();
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public String getOrderName() {
        return orderName;
    }

    public void setOrderName(String orderName) {
        this.orderName = orderName == null ? null : orderName.trim();
    }

    public String getOrderAddress() {
        return orderAddress;
    }

    public void setOrderAddress(String orderAddress) {
        this.orderAddress = orderAddress == null ? null : orderAddress.trim();
    }

    public Integer getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(Integer orderPrice) {
        this.orderPrice = orderPrice;
    }

    public Integer getOrderDiscounts() {
        return orderDiscounts;
    }

    public void setOrderDiscounts(Integer orderDiscounts) {
        this.orderDiscounts = orderDiscounts;
    }

    public Integer getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(Integer orderNum) {
        this.orderNum = orderNum;
    }

    public Integer getOrderCarriage() {
        return orderCarriage;
    }

    public void setOrderCarriage(Integer orderCarriage) {
        this.orderCarriage = orderCarriage;
    }

    public String getOrderPayWay() {
        return orderPayWay;
    }

    public void setOrderPayWay(String orderPayWay) {
        this.orderPayWay = orderPayWay == null ? null : orderPayWay.trim();
    }

    public String getOrderImg() {
        return orderImg;
    }

    public void setOrderImg(String orderImg) {
        this.orderImg = orderImg == null ? null : orderImg.trim();
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus == null ? null : orderStatus.trim();
    }

    public String getOrderExplain() {
        return orderExplain;
    }

    public void setOrderExplain(String orderExplain) {
        this.orderExplain = orderExplain == null ? null : orderExplain.trim();
    }
}