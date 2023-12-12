package kr.co.sist.user.login.findid;

public class FindIdService {
	private static FindIdService fis;
	
	private FindIdService() {
	}//constuctor
	
	public static FindIdService getInstance(){
		if(fis==null) {
			fis=new FindIdService();
		}//end if
		return fis;
	}//getInstance
	
	public FindIdDomain checkId(FindIdVO fiVO) {
	
		FindIdDomain fid=null;
		
		fid=FindIdDAO.getInstance().selectCheckId(fiVO);
		
		return fid;
		
	}//checkId
}//class
