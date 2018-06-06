package com.zmj.wine.entity;

public class Flavour {
    private Integer flavourId;

    private String flavourName;

    public Integer getFlavourId() {
        return flavourId;
    }

    public void setFlavourId(Integer flavourId) {
        this.flavourId = flavourId;
    }

    public String getFlavourName() {
        return flavourName;
    }

    public void setFlavourName(String flavourName) {
        this.flavourName = flavourName == null ? null : flavourName.trim();
    }
}