package com.nt.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response,Object handler) throws Exception{
		String accid=(String) request.getSession().getAttribute("accid");
		if(accid==null||accid.equals("")) {
			request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
		return false;
		}
		return true;
	}

}
