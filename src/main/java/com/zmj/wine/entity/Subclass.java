package com.zmj.wine.entity;

public class Subclass {
    private Integer subclassId;

    private String subclassName;

    public Integer getSubclassId() {
        return subclassId;
    }

    public void setSubclassId(Integer subclassId) {
        this.subclassId = subclassId;
    }

    public String getSubclassName() {
        return subclassName;
    }

    public void setSubclassName(String subclassName) {
        this.subclassName = subclassName == null ? null : subclassName.trim();
    }
}