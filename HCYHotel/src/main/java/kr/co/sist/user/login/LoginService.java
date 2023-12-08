package kr.co.sist.user.login;

public class LoginService {

	private static LoginService ls;
	
	private LoginService() {
	}//constructor
	
	public static LoginService getInstance() {
		if(ls==null) {
			ls=new LoginService();
		}//end if
		return ls;
	}//getInstance
	
	public boolean checkLogin(LoginVO lVO)  {
		boolean flag=false;
		
		String loginId=LoginDAO.getInstance().selectCheckLogin(lVO);
		if(loginId!=null) {
			flag=true;
		}//end if
		 System.out.println("Flag :" + flag);

		return flag;
		
	}//checkLogin
}//class
