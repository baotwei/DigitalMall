package cn.edu.hzvtc.service;

import cn.edu.hzvtc.dao.GoodMapper;
import cn.edu.hzvtc.dao.GoodsTypeMapper;
import cn.edu.hzvtc.pojo.Good;
import cn.edu.hzvtc.pojo.GoodsType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class GoodService {
    @Autowired
    private GoodsTypeMapper goodsTypeMapper;
    @Autowired
    private GoodMapper goodMapper;

    public List<GoodsType> getTree(Integer parentId) {
            return goodsTypeMapper.selectAllForTree(parentId);
    }

    public boolean save(GoodsType goodsType) {
        Boolean result=false;
//        System.out.println(areaMapper.insert(area));
//        System.out.println("111");

        if(goodsTypeMapper.insert1(goodsType)!=0){
            result=true;
        }

        return result;
    }

    public boolean updateGoodsType(GoodsType goodsType) {
        Boolean result=false;
//        System.out.println(areaMapper.insert(area));
//        System.out.println("111");

        if( goodsTypeMapper.updateByPrimaryKey1(goodsType)!=0){
            result=true;
        }

        return result;

    }

    public boolean deleteGoodsType(Integer id) {

        Boolean result=false;

        if(goodsTypeMapper.deleteByPrimaryKey1(id)!=0){
            result=true;
        }
        return result;
    }

    public List<Good> getGoodsByCondition(Integer typeOneId, Integer typeTwoId, Integer brandId, String goodName) {
        return goodMapper.getGoodsByCondition(typeOneId,typeTwoId,brandId,goodName);
    }

    public boolean del(String ids) {
        Boolean result= false;
        System.out.println("-------"+ids);
        if(ids.contains("-")){
            //批量删除
            String[] str_ids = ids.split("-");
            List<Integer> delTds = new ArrayList<Integer>();
            for(String str_id : str_ids){
                delTds.add(Integer.parseInt(str_id));
            }
            if (goodMapper.deleteGoods(delTds) != 0){
                result= true;
            }
        }else {
            //单一删除
            Integer id = Integer.parseInt(ids);
            if (goodMapper.deleteById(id) != 0){
                result= true;
            }
        }
        return result;
    }

    public boolean saveFile(Good good) {
        Boolean result=false;
//        System.out.println(areaMapper.insert(area));
//        System.out.println("111");

        if(goodMapper.insert(good)!=0){
            result=true;
        }

        return result;
    }

    public boolean goodSave(Good good) {
        Boolean result=false;
        if(goodMapper.insertGood(good)!=0){
            result=true;
        }

        return result;
    }


    public Good selectByGoodId(Integer id) {
        return goodMapper.selectByGoodId(id);
    }


    public boolean goodModify(Good newGood) {
        Boolean result=false;
//        System.out.println(areaMapper.insert(area));
//        System.out.println("111");

        if( goodMapper.updateByPrimaryKey1(newGood)!=0){
            result=true;
        }

        return result;
    }

    public Long getCount() {
        return goodMapper.getCount();
    }

    public List<Good> getNewGoodsList() {
        return goodMapper.getNewGoodsList();
    }

    public List<Good> getMoreGoodsList() {
        return goodMapper.getMoreGoodsList();
    }

    public List<Good> getAboutGoodsList(Integer goodType) {
        return goodMapper.getAboutGoodsList(goodType);
    }
}
