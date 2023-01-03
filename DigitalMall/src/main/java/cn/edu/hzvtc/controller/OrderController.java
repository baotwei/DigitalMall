package cn.edu.hzvtc.controller;

import cn.edu.hzvtc.pojo.Order;
import cn.edu.hzvtc.pojo.ReturnMsg;
import cn.edu.hzvtc.pojo.User;
import cn.edu.hzvtc.service.OrderService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
public class OrderController {
    @Autowired
    private OrderService orderService;

    //商品管理
//商品管理-列表
    @RequestMapping("/chartList")
    @ResponseBody
    //    @CrossOrigin
    public ReturnMsg goodsList(@RequestParam(value = "pn", defaultValue = "1")Integer pn,
                               HttpSession session
    ) {
        User loginUser=(User) session.getAttribute("loginUser");
        //引入PageHeLper分页插件
        //在查询之前只需粟传入页码以及每页的大小
        PageHelper.startPage(pn,3);
        //startPage方法紧跟第一个select查询就是一个分页查询
        List<Order> orders=orderService.getOrdersByCondition(loginUser.getUserId());
        // 使用PageInfo包装查询结果,封装了分页信息和查询出的数据，只需将pageInfo交给页面即可
        PageInfo pageInfo = new PageInfo(orders, 5);
        return ReturnMsg.success().add("pageInfo", pageInfo);
    }

    //商品类型添加
    @RequestMapping(value = "/chartAdd",method = RequestMethod.GET)
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg chartAdd(@RequestParam(value = "goodId") Integer goodId,
                                  @RequestParam(value = "quality", defaultValue = "1")Integer quality,
                                  @RequestParam(value = "userId") Integer userId
                                  ) {
        System.out.println(goodId + "-------" + quality + "-----" + userId + "-----------");
        Order order = new Order();
        order.setOrderGoodId(goodId);
        order.setQuality(quality);
        order.setOrderUserId(userId);
        order.setOrderState(0);
        order.setOrderDelState(0);

        List<Order> checkOrder = orderService.selectByUserIdAndGoodId(userId, goodId);
        Integer total = 0;

        for (int i = 0; i < checkOrder.size(); i++) {
            total = quality + checkOrder.get(i).getQuality();
            String orderId = checkOrder.get(i).getOrderId().toString();
            orderService.del(orderId);
        }
        if (total != 0) {
            order.setQuality(total);
        }
        if (orderService.chartAdd(order)) {
            return ReturnMsg.success();
        } else {
            return ReturnMsg.fail();
        }



    }
    @RequestMapping(value = "/offChart/{id}",method = RequestMethod.DELETE)
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg offChart(@PathVariable("id") String ids) {
        System.out.println("idsssssss"+ids);
        if (orderService.del(ids)) {
            return ReturnMsg.success();
        }
        return ReturnMsg.fail();
    }

    @RequestMapping(value = "/qualityReduces/{id}",method = RequestMethod.GET)
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg qualityReduces(@PathVariable("id") String ids, @RequestParam("count") Integer count) {
        System.out.println("idsssssss"+ids);
        if (orderService.qualityReduces(ids,count)) {
            return ReturnMsg.success();
        }
        return ReturnMsg.fail();
    }

    @RequestMapping(value = "/qualityAdds/{id}",method = RequestMethod.GET)
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg qualityAdds(@PathVariable("id") String ids,@RequestParam("count") Integer count) {
        if (orderService.qualityReduces(ids,count)) {
            return ReturnMsg.success();
        }
        return ReturnMsg.fail();
    }

}
