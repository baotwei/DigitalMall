package cn.edu.hzvtc.controller;

import cn.edu.hzvtc.pojo.Good;
import cn.edu.hzvtc.pojo.GoodTypesIdList;
import cn.edu.hzvtc.pojo.GoodsType;
import cn.edu.hzvtc.pojo.ReturnMsg;
import cn.edu.hzvtc.service.GoodService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.*;
import java.util.*;

@Controller
public class GoodsController {

    @Autowired
    private GoodService goodService;

//商品类型管理

    @RequestMapping("/tree")
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg getTreeList(){
        List<GoodsType> goodsTypes= goodService.getTree(0);
        return ReturnMsg.success().add("goodsTypes",goodsTypes);
    }

    //商品类型添加
    @RequestMapping(value = "/goodsTypeAdd",method = RequestMethod.POST)
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg goodsTypeAdd(@Valid GoodsType goodsType, BindingResult result){
        System.out.println("----------");
        System.out.println(goodsType);
        if(!result.hasErrors()){
//            System.out.println(areaService.save(area));
            if(goodService.save(goodsType)){
                return ReturnMsg.success();
            }
        }
        ReturnMsg returnMsg=ReturnMsg.fail();
        for (FieldError error:result.getFieldErrors()){
            System.out.println(error.getField());
            returnMsg.add(error.getField(),error.getDefaultMessage());
        }
        return returnMsg;
    }

    //商品类型修改
    @RequestMapping(value = "/updateGoodsType/{id}",method = RequestMethod.PUT)
    @ResponseBody
    @CrossOrigin
    public ReturnMsg updateGoodsType(@Valid GoodsType goodsType, BindingResult result){
        if(result.hasErrors()){
            Map<String,Object> map=new HashMap<String, Object>();
            List<FieldError> errors=result.getFieldErrors();
            for (FieldError error:errors){
                map.put(error.getField(),error.getDefaultMessage());
            }
            return ReturnMsg.fail().add("fieldErrors",map);
        }else {
            if( goodService.updateGoodsType(goodsType)){
                return ReturnMsg.success();
            }

            return ReturnMsg.success();
        }
    }

    //商品类型删除
    @RequestMapping(value = "/deleteGoodsType/{id}",method = RequestMethod.DELETE)
    @ResponseBody
    @CrossOrigin
    public ReturnMsg deleteGoodsType(@PathVariable("id") Integer id){
        if(goodService.deleteGoodsType(id)){
            return ReturnMsg.success();
        }
        return ReturnMsg.fail();
    }

    //商品管理
//商品管理-列表
    @RequestMapping("/goodsList")
    @ResponseBody
    //    @CrossOrigin
    public ReturnMsg goodsList(@RequestParam(value = "pn", defaultValue = "1")Integer pn,
                              @RequestParam(value = "typeOneId",required = false) Integer typeOneId,
                              @RequestParam(value = "typeTwoId",required = false) Integer typeTwoId,
                              @RequestParam(value = "brandId",required = false) Integer brandId,
                              @RequestParam(value = "goodName",required = false) String goodName
    ) {
        System.out.println("-----------------------"+typeOneId+"*****"+typeTwoId+"*****"+"*****"+brandId);
        //引入PageHeLper分页插件
        //在查询之前只需粟传入页码以及每页的大小
        PageHelper.startPage(pn,5);
        //startPage方法紧跟第一个select查询就是一个分页查询
        if (goodName!=null) {
            goodName = "%" + goodName.trim() + "%";
        }
        List<Good> users=goodService.getGoodsByCondition(typeOneId,typeTwoId,brandId,goodName);
        // 使用PageInfo包装查询结果,封装了分页信息和查询出的数据，只需将pageInfo交给页面即可
        PageInfo pageInfo = new PageInfo(users, 5);
        return ReturnMsg.success().add("pageInfo", pageInfo);
    }

    //商品管理
//商品管理-product页面列表
    @RequestMapping("/productsList")
    @ResponseBody
    //    @CrossOrigin
    public ReturnMsg productsList(@RequestParam(value = "pn", defaultValue = "1")Integer pn,
                              @RequestParam(value = "typeOneId",required = false) Integer typeOneId,
                              @RequestParam(value = "typeTwoId",required = false) Integer typeTwoId,
                              @RequestParam(value = "brandId",required = false) Integer brandId,
                              @RequestParam(value = "goodName",required = false) String goodName
    ) {

        System.out.println("-----------------------"+typeOneId+"*****"+typeTwoId+"*****"+"*****"+brandId+ "****" + goodName);
        //引入PageHeLper分页插件
        //在查询之前只需粟传入页码以及每页的大小
        PageHelper.startPage(pn,8);
        //startPage方法紧跟第一个select查询就是一个分页查询
        if (goodName!=null) {
            goodName = "%" + goodName.trim() + "%";
        }
        List<Good> users=goodService.getGoodsByCondition(typeOneId,typeTwoId,brandId,goodName);
        // 使用PageInfo包装查询结果,封装了分页信息和查询出的数据，只需将pageInfo交给页面即可
        PageInfo pageInfo = new PageInfo(users, 5);
        return ReturnMsg.success().add("pageInfo", pageInfo);
    }

    //商品类型列表
    @RequestMapping("/list")
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg getList(@RequestParam(value = "parentId",defaultValue = "") Integer parentId){
        if(parentId == null){
            parentId = 0;
        }
        List<GoodsType> goodsTypeList = goodService.getTree(parentId);

        return ReturnMsg.success().add("goodsTypeList",goodsTypeList);
    }

    //商品类型列表
    @RequestMapping(value = "/offShelf/{id}",method = RequestMethod.DELETE)
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg delGood(@PathVariable("id") String ids) {
        if (goodService.del(ids)) {
            return ReturnMsg.success();
        }
        return ReturnMsg.fail();
    }

    @RequestMapping(value="/fileImport")
    @ResponseBody
    @CrossOrigin
    public ReturnMsg fileImport(@RequestParam("fileupload") MultipartFile file,
                                HttpServletRequest request) throws Exception{
        System.out.println("......................");
        String path = request.getServletContext().getRealPath("/upload");//文件的上传路径

        System.out.println("path" + path);

        String fileName = file.getOriginalFilename();
        //获取文件名
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        System.out.println("----"+uuid);
        // 获得文件后缀名称
        String suffixName = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();
        System.out.println("----"+suffixName);

        // 生成最新的uuid文件名称
        String newFileName = uuid + "."+ suffixName;
        System.out.println("----"+newFileName);

        System.out.println("文件名" + fileName);
        String path1[] = path.split("\\\\");//对于特殊字符的分隔|  ^   $  *   .    (    )   \   /等都是正则表达式的一部分，只能通过前面加上\\进行转义。注意\要用三个\\\，也就是split（“\\\\”）
        String path2 = path1[path1.length - 1];//截取图片所在的文件夹名称
        File dir = new File(path, newFileName);//将指定文件上传到指定的目录下

//        Integer maxGoodNumber=Integer.parseInt(goodService.selectMaxGoodNumber());
//        String newGoodNumber=String.valueOf(maxGoodNumber+1);
//        good.setGoodNumber(newGoodNumber);
//
//        good.setGoodImage(newFileName);
//
//        System.out.println("good:"+good);

        /**
         * 如果文件夹不存在，自动创建该文件夹
         */
        if (!dir.exists()) {
            dir.mkdirs();
        }
        //MultipartFile自带的解析方法
        if (!file.isEmpty()) {
            file.transferTo(dir);
            return ReturnMsg.success().add("newFileName",newFileName).add("suffixName",suffixName);

//            return path2 + '\\' + newFileName;
        } else {
            System.out.println("空文件");
            return ReturnMsg.fail();

//            return "不允许上传空文件";
        }

//        if(goodService.goodSave(good)){
//            return ReturnMsg.success();
//        }else {
//            return ReturnMsg.fail();
//
//        }
    }

    //商品类型添加
    @RequestMapping(value = "/goodAdd/{newFileName}/{suffixName}")
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg goodsAdd(@Valid Good good,@PathVariable("newFileName") String newFileName,@PathVariable("suffixName") String suffixName){
        System.out.println("----------"+good);
        System.out.println(newFileName);
        Good newGood=new Good();
        newGood.setGoodImage(newFileName);
        System.out.println(newGood);

        newGood.setDescription(good.getDescription());
        newGood.setGoodDelState(0);
        newGood.setGoodName(good.getGoodName());
        newGood.setGoodType(good.getGoodType());
        newGood.setGoodPrice(good.getGoodPrice());
        newGood.setStock(good.getStock());

        System.out.println("newGood:"+newGood);

        if(goodService.goodSave(newGood)){
            return ReturnMsg.success();
        }else {
            return ReturnMsg.fail();

        }
    }

    //商品信息修改
    @RequestMapping(value = "/goodModifyGetInfo",method = RequestMethod.GET)
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg goodModifyGetInfo(@Valid Integer id) {
        System.out.println(id);
        Good good = goodService.selectByGoodId(id);
        return ReturnMsg.success().add("goodInfo",good);
    }

    @RequestMapping(value = "/goodModify/{newFileName}/{suffixName}/{id}")
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg goodsModify(@Valid Good good,@PathVariable("newFileName") String newFileName,
                                 @PathVariable("suffixName") String suffixName,
                                 @PathVariable("id") Integer id
    ){
        System.out.println("----------"+good);
        System.out.println(newFileName);
        good.setGoodImage(newFileName);
        good.setGoodId(id);
        good.setGoodDelState(0);

        System.out.println("newGood:"+good);

        if(goodService.goodModify(good)){
            return ReturnMsg.success();
        }else {
            return ReturnMsg.fail();

        }
    }

    //新商品列表
    @RequestMapping("/newGoodsList")
    @ResponseBody
    //    @CrossOrigin
    public ReturnMsg newGoodsList() {
        List<Good> newGoodsList=goodService.getNewGoodsList();
        // 使用PageInfo包装查询结果,封装了分页信息和查询出的数据，只需将pageInfo交给页面即可
        return ReturnMsg.success().add("newGoodsList", newGoodsList);
    }

    //更多商品列表
    @RequestMapping("/moreGoodsList")
    @ResponseBody
    //    @CrossOrigin
    public ReturnMsg moreGoodsList() {
        List<Good> moreGoodsList=goodService.getMoreGoodsList();
        // 使用PageInfo包装查询结果,封装了分页信息和查询出的数据，只需将pageInfo交给页面即可
        return ReturnMsg.success().add("moreGoodsList", moreGoodsList);
    }

    //相关商品列表
    @RequestMapping("/aboutGoodsList")
    @ResponseBody
    //    @CrossOrigin
    public ReturnMsg aboutGoodsList(@RequestParam(value = "goodType",required = false)Integer goodType) {
        List<Good> aboutGoodsList=goodService.getAboutGoodsList(goodType);
        // 使用PageInfo包装查询结果,封装了分页信息和查询出的数据，只需将pageInfo交给页面即可
        return ReturnMsg.success().add("aboutGoodsList", aboutGoodsList);
    }

    //preview页面获得商品信息
    @RequestMapping(value = "/goodGetInfo",method = RequestMethod.GET)
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg goodGetInfo(@RequestParam("id") Integer id,
                                 HttpSession session) {
        System.out.println(id);
        Good goodInfo = goodService.selectByGoodId(id);
        System.out.println(goodInfo);

        if(goodInfo!=null){
            ReturnMsg returnMsg = ReturnMsg.success();
            session.setAttribute("goodInfo", goodInfo);
            returnMsg.setTarget("preview");
            return returnMsg;
        }else {
            return ReturnMsg.fail();
        }
    }

    @RequestMapping(value = "/getGoodInfo",method = RequestMethod.GET)
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg getGoodInfo(HttpSession session) {

        Good goodInfo=(Good) session.getAttribute("goodInfo");
        System.out.println(session.getId());
//        //获取token
//        String token = request.getHeader("token" );
//        System.out.println("-------------");
//        System.out.println(token);
//        String userId = JwtUtil.getUserProperty(token,"userId");
//        User user = (User) userService.selectById(loginUser.getId());
        System.out.println(goodInfo);
        return ReturnMsg.success().add("goodInfo",goodInfo);
    }

    //点导航product页面获得商品信息
    @RequestMapping(value = "/goodGetGoodsInfoType",method = RequestMethod.GET)
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg goodGetGoodsInfoType(@RequestParam(value = "pn", defaultValue = "1")Integer pn,
                                          @RequestParam(value = "typeOneId",required = false) Integer typeOneId,
                                          @RequestParam(value = "typeTwoId",required = false) Integer typeTwoId,
                                          @RequestParam(value = "brandId",required = false) Integer brandId,
                                          @RequestParam(value = "goodName",required = false) String goodName,
                                 HttpSession session) {
        GoodTypesIdList goodTypesIdList=new GoodTypesIdList(typeOneId,typeTwoId,brandId,goodName,pn);
        System.out.println("*********"+goodTypesIdList);
        ReturnMsg returnMsg = ReturnMsg.success();
        session.setAttribute("goodTypesIdList", goodTypesIdList);
        returnMsg.setTarget("products");

        System.out.println(returnMsg);
        return returnMsg;

    }

    @RequestMapping(value = "/goodGetGoodsInfoByType",method = RequestMethod.GET)
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg goodGetGoodsInfoByType(HttpSession session) {
        GoodTypesIdList  goodTypesIdLists=(GoodTypesIdList) session.getAttribute("goodTypesIdList");
        System.out.println(session.getId());
//        //获取token
//        String token = request.getHeader("token" );
//        System.out.println("-------------");
//        System.out.println(token);
//        String userId = JwtUtil.getUserProperty(token,"userId");
//        User user = (User) userService.selectById(loginUser.getId());
        System.out.println("----"+goodTypesIdLists);
        return ReturnMsg.success().add("goodTypesIdLists",goodTypesIdLists);

    }



}
