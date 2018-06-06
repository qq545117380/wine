package com.zmj.wine.entity;

public class Evaluate {
    private Integer evaluateId;

    private Integer itemId;

    private Integer userId;

    private String etDetail;

    private Integer etSatisficing;

    public Integer getEvaluateId() {
        return evaluateId;
    }

    public void setEvaluateId(Integer evaluateId) {
        this.evaluateId = evaluateId;
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getEtDetail() {
        return etDetail;
    }

    public void setEtDetail(String etDetail) {
        this.etDetail = etDetail == null ? null : etDetail.trim();
    }

    public Integer getEtSatisficing() {
        return etSatisficing;
    }

    public void setEtSatisficing(Integer etSatisficing) {
        this.etSatisficing = etSatisficing;
    }
}