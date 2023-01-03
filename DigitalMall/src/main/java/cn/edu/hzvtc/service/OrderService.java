package cn.edu.hzvtc.service;

import cn.edu.hzvtc.dao.OrderMapper;
import cn.edu.hzvtc.pojo.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService {
    @Autowired
    private OrderMapper orderMapper;

    public List<Order> getOrdersByCondition(Integer userId) {
        return orderMapper.getOrdersByCondition(userId);
    }



    public boolean chartAdd(Order order) {
        Boolean result=false;
        if(orderMapper.chartAdd(order)!=0){
            result=true;
        }

        return result;
    }

    public boolean del(String ids) {
        Boolean result=false;
        if(orderMapper.deleteByPrimaryKey1(ids)!=0){
            result=true;
        }
        return result;
    }

    public List<Order> selectByUserIdAndGoodId(Integer userId, Integer goodId) {
        return orderMapper.selectByUserIdAndGoodId(userId,goodId);
    }

    public boolean qualityReduces(String ids,Integer count) {
        Boolean result=false;
        if(orderMapper.qualityReduces(ids,count)!=0){
            result=true;
        }
        return result;
    }

    public boolean qualityAdds(String ids ,Integer count) {
        Boolean result=false;
        if(orderMapper.qualityAdds(ids,count)!=0){
            result=true;
        }
        return result;
    }
}
