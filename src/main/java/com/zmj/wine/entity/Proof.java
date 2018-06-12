package com.zmj.wine.entity;

import java.io.Serializable;

public class Proof implements Serializable{
    private Integer proofId;

    private String proofName;

    public Integer getProofId() {
        return proofId;
    }

    public void setProofId(Integer proofId) {
        this.proofId = proofId;
    }

    public String getProofName() {
        return proofName;
    }

    public void setProofName(String proofName) {
        this.proofName = proofName == null ? null : proofName.trim();
    }
}