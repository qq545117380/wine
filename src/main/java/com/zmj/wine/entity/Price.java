package com.zmj.wine.entity;

import java.io.Serializable;

public class Price implements Serializable{
    private Integer priceId;

    private String priceName;

    public Integer getPriceId() {
        return priceId;
    }

    public void setPriceId(Integer priceId) {
        this.priceId = priceId;
    }

    public String getPriceName() {
        return priceName;
    }

    public void setPriceName(String priceName) {
        this.priceName = priceName == null ? null : priceName.trim();
    }
}