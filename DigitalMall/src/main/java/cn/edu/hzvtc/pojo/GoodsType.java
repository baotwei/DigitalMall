package cn.edu.hzvtc.pojo;

import java.util.List;

public class GoodsType {
    private Integer id;
    private String goodsTypeName;
    private Integer goodsTypeParentId;
    private Integer sortNum;
    private Integer delState;
    private Integer goodsType;

    private Good parentGoodsType;//父

    public GoodsType() {
    }

    public GoodsType(Integer id, String goodsTypeName, Integer goodsTypeParentId, Integer sortNum, Integer delState, Integer goodsType, Good parentGoodsType, String text, List<GoodsType> nodes) {
        this.id = id;
        this.goodsTypeName = goodsTypeName;
        this.goodsTypeParentId = goodsTypeParentId;
        this.sortNum = sortNum;
        this.delState = delState;
        this.goodsType = goodsType;
        this.parentGoodsType = parentGoodsType;
        this.text = text;
        this.nodes = nodes;
    }

    public GoodsType(Integer id, String goodsTypeName, Integer goodsTypeParentId, Integer sortNum, Integer goodsType) {
        this.id = id;
        this.goodsTypeName = goodsTypeName;
        this.goodsTypeParentId = goodsTypeParentId;
        this.sortNum = sortNum;
        this.goodsType = goodsType;
    }

    public Good getParentGoodsType() {
        return parentGoodsType;
    }

    public void setParentGoodsType(Good parentGoodsType) {
        this.parentGoodsType = parentGoodsType;
    }

    //树形控件显示
    private String text;//节点文字
    private List<GoodsType> nodes;//子节点

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public List<GoodsType> getNodes() {
        return nodes;
    }

    public void setNodes(List<GoodsType> nodes) {
        this.nodes = nodes;
    }

    public GoodsType(Integer id, String goodsTypeName, Integer goodTypeParentId, Integer sortNum, Integer delState, Integer goodsType) {
        this.id = id;
        this.goodsTypeName = goodsTypeName;
        this.goodsTypeParentId = goodTypeParentId;
        this.sortNum = sortNum;
        this.delState = delState;
        this.goodsType = goodsType;
    }


    public Integer getGoodsType() {
        return goodsType;
    }

    public void setGoodsType(Integer goodsType) {
        this.goodsType = goodsType;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGoodsTypeName() {
        return goodsTypeName;
    }

    public void setGoodsTypeName(String goodsTypeName) {
        this.goodsTypeName = goodsTypeName;
    }

    public Integer getGoodsTypeParentId() {
        return goodsTypeParentId;
    }

    public void setGoodsTypeParentId(Integer goodsTypeParentId) {
        this.goodsTypeParentId = goodsTypeParentId;
    }

    public Integer getSortNum() {
        return sortNum;
    }

    public void setSortNum(Integer sortNum) {
        this.sortNum = sortNum;
    }

    public Integer getDelState() {
        return delState;
    }

    public void setDelState(Integer delState) {
        this.delState = delState;
    }
}
