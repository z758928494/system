package com.kindergarten.healther.interceptor;

import com.kindergarten.healther.pojo.Healther;
import org.springframework.lang.Nullable;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInterceptor implements HandlerInterceptor {
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        System.out.println("进入拦截器");
        Healther healther = (Healther) request.getSession().getAttribute("healther");

        System.out.println("当前信息："+healther);
        if (healther == null) {
            //保健员未登录，根据请求调用不同方法
            if (request.getHeader("x-requested-with") != null
                    && request.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest")) {
                //处理ajax请求
                System.out.println("ajax调用");
                response.setHeader("sessionstatus", "timeout");
                response.setStatus(403);
                return false;
            } else {
                //处理controller请求
                String loginStr=request.getContextPath() + "/healther/jsp/login.jsp";
                System.out.println("页面请求");
                System.out.println("登录界面:"+loginStr);
                response.sendRedirect(loginStr);
                return false;
            }
        }
        else
            return true;
    }

    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
                           @Nullable ModelAndView modelAndView) throws Exception {
    }

    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,
                                @Nullable Exception ex) throws Exception {
    }
}
