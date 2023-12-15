package kr.co.sist.user.home;

public class HomeDAO {
	private static HomeDAO hDAO;
	
	private HomeDAO() {
	}//constructor
	
	public static HomeDAO getInstance() {
		if(hDAO==null) {
			hDAO=new HomeDAO();
		}//end if
		return hDAO;
	}//getInstance
}
