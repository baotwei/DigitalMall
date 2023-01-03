package cn.edu.hzvtc.controller;

import cn.edu.hzvtc.pojo.ReturnMsg;
import cn.edu.hzvtc.service.GoodService;
import cn.edu.hzvtc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PageController {
    @Autowired
    private UserService userService;

    @Autowired
    private GoodService goodService;

    @RequestMapping("/managerIndex")
    public String managerIndex(){
        return "behind/managerIndex";
    }

    @RequestMapping("/userManager")
    public String userManager(){
        return "behind/userManager";
    }
    @RequestMapping("/goodsManager")
    public String goodsManager(){
        return "behind/goodsManager";
    }

    @RequestMapping("/goodsTypeManager")
    public String goodsTypeManager(){
        return "behind/goodsTypeManager";
    }

    @RequestMapping("/userTypeManager")
    public String userTypeManager(){
        return "behind/userTypeManager";
    }

    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    @RequestMapping("/register")
    public String register(){
        return "register";
    }

    @RequestMapping("/preview")
    public String preview(){
        return "preview";
    }

    @RequestMapping("/news")
    public String news(){
        return "news";
    }
    @RequestMapping("/delivery")
    public String delivery(){
        return "delivery";
    }

    @RequestMapping("/contact")
    public String contact(){
        return "contact";
    }

    @RequestMapping("/about")
    public String about(){
        return "about";
    }

    @RequestMapping("/products")
    public String products(){
        return "products";
    }

    @RequestMapping("/registerSucess")
    public String registerSucess(){
        return "registerSuccess";
    }

    @RequestMapping("/myArea")
    public String myArea(){
        return "myArea";
    }

    @RequestMapping("/chart")
    public String chart(){
        return "chart";
    }

    @RequestMapping("/count")
    @ResponseBody
//    @CrossOrigin
    public ReturnMsg getCount() {
        Long userCount = userService.getCount(3);
        System.out.println(userCount);
        Long businessCount = userService.getCount(2);
        System.out.println(businessCount);
        Long goodsCount = goodService.getCount();
        System.out.println(goodsCount);

        return ReturnMsg.success().add("userCount", userCount)
                .add("businessCount", businessCount)
                .add("goodsCount", goodsCount);
    }

}
