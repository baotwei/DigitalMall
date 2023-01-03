package cn.edu.hzvtc.controller;

import cn.edu.hzvtc.pojo.ReturnMsg;
import cn.edu.hzvtc.pojo.User;
import cn.edu.hzvtc.pojo.UserType;
import cn.edu.hzvtc.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.validation.constraints.Email;
import java.util.Date;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

//登录
    @RequestMapping("/loginInto")
    @ResponseBody
    //    @CrossOrigin
    public ReturnMsg login(@RequestParam(value = "email", required = true) String email,
                           @RequestParam(value = "password", required = true) String password,
                            HttpSession session) {

        //邮箱或密码为空，登录失败，返回登录页
        if (email == null || password == null) {
            return ReturnMsg.fail();
        }
        //此处横版从数据库中获取对用户名和密码进行判断
        User user= new User();
        user.setEmail(email);
        user.setPassword(password);
        User loginUser = userService.login(user);
        System.out.println(loginUser);
        //登录
        if (loginUser != null) {

            session.setAttribute("loginUser", loginUser);

            ReturnMsg returnMsg = ReturnMsg.success();
            //创建令牌
//            String token = JwtUtil.sign(loginUser.getId().toString(),
//                    loginUser.getUserType().toString(),
//                    loginUser.getUserAreaId()==null?"":loginUser.getUserAreaId().toString());
//            ReturnMsg returnMsg = ReturnMsg.success().add("token", token);

            if (loginUser.getUserType() == 1||loginUser.getUserType() == 2) {

                returnMsg.setTarget("managerIndex");
            }
            else if (loginUser.getUserType() == 3||loginUser.getUserType() == 4) {
                returnMsg.setTarget("index");

            }
        else {
                returnMsg.setTarget("");
            }

            return returnMsg;
        }else {
            return ReturnMsg.fail();
        }

    }
    //用户名回显
    @RequestMapping("/loginUser")
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg loginUser(HttpSession session){
//    public ReturnMsg loginUser(@ModelAttribute("loginUser") User loginUser ){
        //获取登录用户信息
        User loginUser=(User) session.getAttribute("loginUser");
        System.out.println(session.getId());
//        //获取token
//        String token = request.getHeader("token" );
//        System.out.println("-------------");
//        System.out.println(token);
//        String userId = JwtUtil.getUserProperty(token,"userId");
//        User user = (User) userService.selectById(loginUser.getId());
        System.out.println(loginUser.getEmail());
        User user=userService.getUserByEmail(loginUser.getEmail());
        return ReturnMsg.success().add("loginUser",user);
    }

    //注销
    @RequestMapping("/logout")
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg logout(HttpSession session){
        //清除session
        session.invalidate();
        //重定向
        ReturnMsg returnMsg=ReturnMsg.success();
//        ReturnMsg returnMsg=ReturnMsg.success().add("token","");
        returnMsg.setTarget("login");
        return  returnMsg;
    }

    //注册
    @RequestMapping(value = "/registerUser", method = RequestMethod.POST)
    @ResponseBody
    //@CrossOrigin
    public ReturnMsg register(@Valid User user){
        user.setUserName(user.getUserName());
        user.setPassword(user.getPassword());
        user.setEmail(user.getEmail());
        user.setUserOperatorTime( new Date() );
        user.setUserType(4);
        user.setUserDelState(0) ;

        ReturnMsg returnMsg = ReturnMsg.success();

        if (userService.register(user)) {
            returnMsg.setTarget("registerSucess");
            return returnMsg;
        }else {
            return ReturnMsg.fail();
        }
    }

    //密码修改
    @RequestMapping(value = "/updatePassword", method = RequestMethod.GET)
    @ResponseBody
    //@CrossOrigin
    public ReturnMsg updatePassword(@RequestParam(value = "email",required = false) String email,
                                    @RequestParam(value = "password",required = false) String password
                                                                  ){
        ReturnMsg returnMsg = ReturnMsg.success();
        if (userService.updatePassword(email,password)) {
            returnMsg.setTarget("index");
            return returnMsg;
        }else {
            return ReturnMsg.fail();
        }
    }


    //用户管理-列表
    @RequestMapping("/userList")
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg getUsers(@RequestParam(value = "pn", defaultValue = "1")Integer pn,
                              @RequestParam(value = "userTypes",required = false) Integer userTpyeId,
                              @RequestParam(value = "userName",required = false) String userName,HttpSession session
                              ) {
        User loginUser = (User) session.getAttribute( "loginUser" );
//        System.out.println(loginUser+"---------------");
        User user=userService.getUserByEmail(loginUser.getEmail());
//        System.out.println(user+"--------------------");
        //引入PageHeLper分页插件
        //在查询之前只需粟传入页码以及每页的大小
        PageHelper.startPage(pn,5);
        //startPage方法紧跟第一个select查询就是一个分页查询
        if (userName!=null) {
            userName = "%" + userName.trim() + "%";
        }
        List<User> users=userService.getUsersByCondition(userTpyeId,userName,user.getUserType());
        // 使用PageInfo包装查询结果,封装了分页信息和查询出的数据，只需将pageInfo交给页面即可
        PageInfo pageInfo = new PageInfo(users, 5);
        return ReturnMsg.success().add("pageInfo", pageInfo);
    }

    //用户删除
    @RequestMapping(value = "/userDelete/{id}",method = RequestMethod.DELETE)
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg userDelete(@PathVariable("id") String ids) {
        if (userService.deleteUser(ids)) {
            return ReturnMsg.success();
        }
        return ReturnMsg.fail();
    }
    //用户密码重置
    @RequestMapping(value = "/passwordReset", method = RequestMethod.POST)
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg reset(@Valid Integer id){
        System.out.println(id);

        if (userService.reset(id)) {
            return ReturnMsg.success();
        }
        return ReturnMsg.fail();

    }
    //用户添加
    @RequestMapping(value = "/userSave", method = RequestMethod.POST)
    @ResponseBody
    @CrossOrigin
    public ReturnMsg userSave(@Valid User user){
        System.out.println("///////////"+user);
        user.setUserName(user.getUserName());
        user.setPassword(user.getPassword());
        user.setEmail(user.getEmail());
        user.setUserOperatorTime( new Date() );
        user.setUserType(user.getUserType());
        user.setUserDelState(0) ;

        if (userService.register(user)) {
            return ReturnMsg.success();
        }else {
            return ReturnMsg.fail();
        }
    }

    //用户信息修改
    @RequestMapping(value = "/userModifyGetInfo",method = RequestMethod.GET)
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg userModifyGetInfo(@Valid Integer id) {
        System.out.println(id);
        User user = userService.selectById(id);
        return ReturnMsg.success().add("userInfo",user);
    }

    @RequestMapping(value = "/userModify/{userId}", method = RequestMethod.PUT)
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg userModify(@PathVariable("userId") Integer userId,@Valid User user){
        System.out.println(userId+"------------"+user);
        user.setUserId(userId);
        System.out.println(userId+"------------"+user);

        userService.updateUser(user);
        return ReturnMsg.success();
    }

    //用户类型管理
    //用户类型管理-列表
    @RequestMapping("/userTypeList")
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg userTypeList() {
        List<UserType> userTypeList = userService.getUserTypeList();
        return ReturnMsg.success().add("userTypeList", userTypeList);
    }

    @RequestMapping(value = "/userType/{id}",method = RequestMethod.DELETE)
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg delUsers(@PathVariable("id") String ids) {
        if (userService.delUserType(ids)) {
            return ReturnMsg.success();
        }
        return ReturnMsg.fail();
    }


    @RequestMapping(value = "/userType", method = RequestMethod.POST)
    @ResponseBody
    @CrossOrigin
    public ReturnMsg save(@Valid UserType userType ){
        if (userService.addUserType(userType)) {
            return ReturnMsg.success();
        }
        return ReturnMsg.fail();
    }


    @RequestMapping(value = "/userTypeInfo",method = RequestMethod.GET)
    @ResponseBody
    @CrossOrigin
    public ReturnMsg selectUserTypeInfoById(@Valid Integer id) {
//        System.out.println(id);
        UserType userType = userService.selectUserTypeInfoById(id);
        return ReturnMsg.success().add("userType",userType);
    }

    @RequestMapping(value = "/userType", method = RequestMethod.PUT)
    @ResponseBody
    @CrossOrigin
    public ReturnMsg update(@Valid UserType userType){
        if (userService.updateUserType(userType)) {
            return ReturnMsg.success();
        }
        return ReturnMsg.fail();
    }
}
