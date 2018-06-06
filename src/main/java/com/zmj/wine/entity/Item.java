package com.zmj.wine.entity;

public class Item {
    private Integer itemId;

    private String itemName;

    private String itemDescribe;

    private Integer regularPrice;

    private Integer activityPrice;

    private String itemPromotionMsg;

    private Integer itemNotability;

    private Integer itemIntegral;

    private String itemBrand;

    private String itemSku;

    private String itemContent;

    private String itemProof;

    private String itemReticule;

    private String itemFlavour;

    private String itemCartonSpec;

    private String itemSpec;

    private String img1;

    private String img2;

    private String img3;

    private Integer itemPreferential;

    private String itemStatus;

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName == null ? null : itemName.trim();
    }

    public String getItemDescribe() {
        return itemDescribe;
    }

    public void setItemDescribe(String itemDescribe) {
        this.itemDescribe = itemDescribe == null ? null : itemDescribe.trim();
    }

    public Integer getRegularPrice() {
        return regularPrice;
    }

    public void setRegularPrice(Integer regularPrice) {
        this.regularPrice = regularPrice;
    }

    public Integer getActivityPrice() {
        return activityPrice;
    }

    public void setActivityPrice(Integer activityPrice) {
        this.activityPrice = activityPrice;
    }

    public String getItemPromotionMsg() {
        return itemPromotionMsg;
    }

    public void setItemPromotionMsg(String itemPromotionMsg) {
        this.itemPromotionMsg = itemPromotionMsg == null ? null : itemPromotionMsg.trim();
    }

    public Integer getItemNotability() {
        return itemNotability;
    }

    public void setItemNotability(Integer itemNotability) {
        this.itemNotability = itemNotability;
    }

    public Integer getItemIntegral() {
        return itemIntegral;
    }

    public void setItemIntegral(Integer itemIntegral) {
        this.itemIntegral = itemIntegral;
    }

    public String getItemBrand() {
        return itemBrand;
    }

    public void setItemBrand(String itemBrand) {
        this.itemBrand = itemBrand == null ? null : itemBrand.trim();
    }

    public String getItemSku() {
        return itemSku;
    }

    public void setItemSku(String itemSku) {
        this.itemSku = itemSku == null ? null : itemSku.trim();
    }

    public String getItemContent() {
        return itemContent;
    }

    public void setItemContent(String itemContent) {
        this.itemContent = itemContent == null ? null : itemContent.trim();
    }

    public String getItemProof() {
        return itemProof;
    }

    public void setItemProof(String itemProof) {
        this.itemProof = itemProof == null ? null : itemProof.trim();
    }

    public String getItemReticule() {
        return itemReticule;
    }

    public void setItemReticule(String itemReticule) {
        this.itemReticule = itemReticule == null ? null : itemReticule.trim();
    }

    public String getItemFlavour() {
        return itemFlavour;
    }

    public void setItemFlavour(String itemFlavour) {
        this.itemFlavour = itemFlavour == null ? null : itemFlavour.trim();
    }

    public String getItemCartonSpec() {
        return itemCartonSpec;
    }

    public void setItemCartonSpec(String itemCartonSpec) {
        this.itemCartonSpec = itemCartonSpec == null ? null : itemCartonSpec.trim();
    }

    public String getItemSpec() {
        return itemSpec;
    }

    public void setItemSpec(String itemSpec) {
        this.itemSpec = itemSpec == null ? null : itemSpec.trim();
    }

    public String getImg1() {
        return img1;
    }

    public void setImg1(String img1) {
        this.img1 = img1 == null ? null : img1.trim();
    }

    public String getImg2() {
        return img2;
    }

    public void setImg2(String img2) {
        this.img2 = img2 == null ? null : img2.trim();
    }

    public String getImg3() {
        return img3;
    }

    public void setImg3(String img3) {
        this.img3 = img3 == null ? null : img3.trim();
    }

    public Integer getItemPreferential() {
        return itemPreferential;
    }

    public void setItemPreferential(Integer itemPreferential) {
        this.itemPreferential = itemPreferential;
    }

    public String getItemStatus() {
        return itemStatus;
    }

    public void setItemStatus(String itemStatus) {
        this.itemStatus = itemStatus == null ? null : itemStatus.trim();
    }
}