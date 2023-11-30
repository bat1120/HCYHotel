package kr.co.sist.admin.login;

public class AdminLoginDAO {

	private static AdminLoginDAO alDAO;
	
	private AdminLoginDAO() {
	}//constructor
	
	public static AdminLoginDAO getInstance() {
		if(alDAO == null ) {alDAO = new AdminLoginDAO();}
		return alDAO;
	}//getInstance
	
	public String selectCheckLogin(LoginVO lVO) {
		
		return "" ;
	}//selectCheckLogin
	
}//class
