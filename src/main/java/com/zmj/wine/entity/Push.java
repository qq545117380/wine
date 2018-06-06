package com.zmj.wine.entity;

public class Push {
    private Integer pushId;

    private Integer itemId;

    private String pmName;

    private String pmImg;

    private Integer pmPrice;

    public Integer getPushId() {
        return pushId;
    }

    public void setPushId(Integer pushId) {
        this.pushId = pushId;
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public String getPmName() {
        return pmName;
    }

    public void setPmName(String pmName) {
        this.pmName = pmName == null ? null : pmName.trim();
    }

    public String getPmImg() {
        return pmImg;
    }

    public void setPmImg(String pmImg) {
        this.pmImg = pmImg == null ? null : pmImg.trim();
    }

    public Integer getPmPrice() {
        return pmPrice;
    }

    public void setPmPrice(Integer pmPrice) {
        this.pmPrice = pmPrice;
    }
}