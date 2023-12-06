package kr.co.sist.admin.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.util.WebUtils;

public class LoginCheckInterceptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		Object obj=WebUtils.getSessionAttribute(request, "login");
		
		if("/HCYHotel/admin/login.do".equals(request.getRequestURI()) || 
				"/HCYHotel/admin/gologin.do".equals(request.getRequestURI())
				|| "/HCYHotel/admin/msg.do".equals(request.getRequestURI())) {
			return true;
		}//if
		
		if(obj == null) {
			request.setAttribute("msg","로그인 후 이용가능합니다.");
			request.setAttribute("url","gologin.do");
			response.sendRedirect("msg.do");
			return false;
		}//if
		
		return true;
	}//preHandle
}//class
