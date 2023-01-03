package cn.edu.hzvtc.interceptor;

import cn.edu.hzvtc.pojo.User;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response,
                             Object handler) throws Exception{
        Boolean flg=true;

        //获取请求的Rui：去除http:localhost:8080这部分剩下的
        String uri=request.getRequestURI();
        //UTL：除了login.jsp是可以公开访问的，其他的Url都是进行拦截控制
        if (uri.indexOf("/login")>=0||uri.indexOf("/register")>=0
                ||uri.indexOf("/registerSuccess")>=0 ||uri.indexOf("/before/")>=0){
            return flg;
        }
        //获取session
        HttpSession session=request.getSession();
        User user=(User)session.getAttribute("loginUser");
        //判断session中是否有用户数据，如果有，则返回true，继续向下执行
        if(user!=null){
            if (uri.indexOf("behind")>=0){
                if (user.getUserType()!=1||user.getUserType()!=2){
                    flg=false;
                }
            }

        }else {
            flg=false;
        }
        if (!flg){
            response.sendRedirect(request.getContextPath());
            return false;
        }

        return flg;
    }
}
