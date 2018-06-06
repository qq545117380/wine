package com.zmj.wine.entity;

public class Yieldly {
    private Integer yieldlyId;

    private String yieldlyName;

    public Integer getYieldlyId() {
        return yieldlyId;
    }

    public void setYieldlyId(Integer yieldlyId) {
        this.yieldlyId = yieldlyId;
    }

    public String getYieldlyName() {
        return yieldlyName;
    }

    public void setYieldlyName(String yieldlyName) {
        this.yieldlyName = yieldlyName == null ? null : yieldlyName.trim();
    }
}