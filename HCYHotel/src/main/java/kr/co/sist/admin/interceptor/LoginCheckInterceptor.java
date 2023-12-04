package kr.co.sist.admin.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.util.WebUtils;

public class LoginCheckInterceptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("인터셉터"+request.getRequestURI());
		System.out.println("로그인"+WebUtils.getSessionAttribute(request, "login"));
		Object obj=WebUtils.getSessionAttribute(request, "login");
		
		if("/HCYHotel/admin/gologin.do".equals(request.getRequestURI()) || "/HCYHotel/admin/msg.do".equals(request.getRequestURI())) {
			System.out.println("이건 뭐야");
			return true;
		}//if
		
		if(obj == null) {
			System.out.println("넌 왜 함");
			request.setAttribute("msg","로그인 후 이용가능합니다.");
			request.setAttribute("url","gologin.do");
			response.sendRedirect("msg.do");
			return false;
		}//if
		
		return true;
	}//preHandle
}//class
