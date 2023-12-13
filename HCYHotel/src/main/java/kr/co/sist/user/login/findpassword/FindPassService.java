package kr.co.sist.user.login.findpassword;

import kr.co.sist.user.login.findid.FindIdService;

	public class FindPassService {
	private static FindPassService fps;
	
	private FindPassService() {
	}//constuctor
	
	public static FindPassService getInstance(){
		if(fps==null) {
			fps=new FindPassService();
		}//end if
		return fps;
	}//getInstance
	
	public boolean checkMember(FindPassVO fpVO) {
		boolean flag=false;
		
		String checkMember=FindPassDAO.getInstance().selectCheckMember(fpVO);
		if(checkMember!=null) {
			flag=true;
		}//end if
		return flag;
	}//checkMember
	
	public boolean checkBusiness(FindPassVO fpVO) {
		boolean flag=false;
		
		String checkBusiness=FindPassDAO.getInstance().selectCheckBusiness(fpVO);
		if(checkBusiness!=null) {
			flag=true;
		}//end if
		return flag;
	}//checkBusiness
	
	public boolean changePass(ChangePassVO cpVO) {
		boolean flag=false;
		
		int cnt=FindPassDAO.getInstance().updatePass(cpVO);
		if(cnt>0) {
			flag=true;
		}//end if
		return flag;
	}//changePass
	
	public boolean changeBusinessPass(ChangePassVO cpVO) {
		boolean flag=false;
		
		int cnt=FindPassDAO.getInstance().updatePassBusiness(cpVO);
		if(cnt>0) {
			flag=true;
		}//end if
		return flag;
	}//changeBusinessPass
	
}//class
