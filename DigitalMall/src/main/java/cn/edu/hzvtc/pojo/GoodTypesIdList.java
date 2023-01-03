package cn.edu.hzvtc.pojo;

public class GoodTypesIdList {
    private Integer typeOneId;
    private Integer typeTwoId;
    private Integer brandId;
    private String goodName;
    private Integer pn;

    @Override
    public String toString() {
        return "goodTypesIdList{" +
                "typeOneId=" + typeOneId +
                ", typeTwoId=" + typeTwoId +
                ", brandId=" + brandId +
                ", goodName='" + goodName + '\'' +
                ", pn=" + pn +
                '}';
    }

    public GoodTypesIdList(Integer typeOneId, Integer typeTwoId, Integer brandId, String goodName, Integer pn) {
        this.typeOneId = typeOneId;
        this.typeTwoId = typeTwoId;
        this.brandId = brandId;
        this.goodName = goodName;
        this.pn = pn;
    }

    public Integer getTypeOneId() {
        return typeOneId;
    }

    public void setTypeOneId(Integer typeOneId) {
        this.typeOneId = typeOneId;
    }

    public Integer getTypeTwoId() {
        return typeTwoId;
    }

    public void setTypeTwoId(Integer typeTwoId) {
        this.typeTwoId = typeTwoId;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public String getGoodName() {
        return goodName;
    }

    public void setGoodName(String goodName) {
        this.goodName = goodName;
    }

    public Integer getPn() {
        return pn;
    }

    public void setPn(Integer pn) {
        this.pn = pn;
    }
}
