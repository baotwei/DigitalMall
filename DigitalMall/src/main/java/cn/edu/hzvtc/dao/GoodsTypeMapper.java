package cn.edu.hzvtc.dao;

import cn.edu.hzvtc.pojo.GoodsType;

import java.util.List;

public interface GoodsTypeMapper {
    GoodsType selectByPrimaryKey(Integer id);

    int deleteByPrimaryKey(Integer id);

    int insert(GoodsType record);

    List<GoodsType> selectAll();

    int updateByPrimaryKey(GoodsType record);

    List<GoodsType> selectAllForTree(Integer parentId);

    int deleteByPrimaryKey1(Integer id);

    int insert1(GoodsType goodsType);

    int updateByPrimaryKey1(GoodsType goodsType);
}
