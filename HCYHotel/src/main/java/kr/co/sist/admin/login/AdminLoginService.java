package kr.co.sist.admin.login;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

public class AdminLoginService {
	private static AdminLoginService als;
	
	private AdminLoginService() {
	}//constructor
	
	public static AdminLoginService getInstance() {
		if(als == null) {als=new AdminLoginService();}
		return als;
	}//getInstance
	
	public void setCookie(HttpServletResponse respons, String name,String value) {
		Cookie flagCk = new Cookie(name,value);
		flagCk.setMaxAge(60*60*24*30);
		respons.addCookie(flagCk);
	}//checkCookie
	
	public boolean checkLogin(LoginVO lVO) {
	boolean flag = false;
	
	
	
	return flag;
	}//checkLogin
	
}//class