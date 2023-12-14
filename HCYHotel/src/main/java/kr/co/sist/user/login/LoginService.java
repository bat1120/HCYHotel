package kr.co.sist.user.login;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.encryption.Encryption;

@Service
public class LoginService {

	private static LoginService ls;
	@Autowired
	private Encryption encryption;
	
	private LoginService() {
	}//constructor
	
	public static LoginService getInstance() {
		if(ls==null) {
			ls=new LoginService();
		}//end if
		return ls;
	}//getInstance
	
	public void setCookie(HttpServletResponse respons, String name,String value) {
		Cookie flagCk = new Cookie(name,value);
		flagCk.setMaxAge(60*60*24*30);
		respons.addCookie(flagCk);
	}//checkCookie
	
	public void removeCookie(HttpServletResponse respons, String name,String value) {
		Cookie flagCk = new Cookie(name,value);
		flagCk.setMaxAge(0);
		respons.addCookie(flagCk);
	}//checkCookie
	
	public boolean checkLogin(LoginVO lVO) {
	    boolean flag = false;

	    try {
	        encryption = new Encryption();

	        String enPassword = encryption.directEncryption(lVO.getPassword());
	        lVO.setPassword(enPassword);
	        String loginId = LoginDAO.getInstance().selectCheckLogin(lVO);

	        if (loginId != null) {
	            flag = true;
	        }//end if
	    } catch (Exception e) {
	        // 예외 처리
	        e.printStackTrace(); 
	        flag = false; 
	    }//end catch
	    return flag;
	}//checkLogin

	
	public boolean checkBusLogin(LoginVO lVO)  {
	    boolean flag = false;

	    try {
	        encryption = new Encryption();

	        String enPassword = encryption.directEncryption(lVO.getPassword());
	        lVO.setPassword(enPassword);
	        String loginId = LoginDAO.getInstance().selectBusCheckLogin(lVO);

	        if (loginId != null) {
	            flag = true;
	        }//end if
	    } catch (Exception e) {
	        // 예외 처리
	        e.printStackTrace(); 
	        flag = false; 
	    }//end catch
	    return flag;
	}//checkBusLogin
}//class
