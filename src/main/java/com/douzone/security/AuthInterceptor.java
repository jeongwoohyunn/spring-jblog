package com.douzone.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.douzone.jblog.vo.UserVo;

public class AuthInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(
		HttpServletRequest request,
		HttpServletResponse response,
		Object handler) throws Exception {
		

		//1. Handler 종류 확인
		if(handler instanceof HandlerMethod==false) {
			return true;
		}
		
		//2. Casting
		HandlerMethod handlerMethod=(HandlerMethod)handler;
		
		//3.method에 @Auth받아오기
		Auth auth=handlerMethod.getMethodAnnotation(Auth.class);
		
		
		//3-1. method에 @Auth 안 붙어있으면 class(type)에 받아오기
		if(auth==null) {
			auth=handlerMethod.getMethod().getDeclaringClass().getAnnotation(Auth.class);
		}
		
		//handlerMethod.getMethod().getDeclaredAnnotation();
		//4. method와 type둘다 auth가 없다 @Auth가 안 붙어 있으면
		if(auth==null) {
			return true;
		}
		
		//5. @Auth 붙어 있기 때문에 로그인 여부(인증여부)를 확인해야한다.
		HttpSession session= request.getSession();
		UserVo authUser=null;
		
		if(session!=null) {
			authUser=(UserVo)session.getAttribute("authUser");
		}
		//없으면 가져와라고 login으로 보냄
		if(authUser==null) {
			response.sendRedirect(request.getContextPath()+"/user/login");
			return false;
		}
		
		
		//6. 접근허용
		return true;
	}

}
