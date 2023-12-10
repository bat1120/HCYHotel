package kr.co.sist.user.join;

public class JoinMemberService {
	private static JoinMemberService jms;
	
	private JoinMemberService() {
	}//constructor
	
	public static JoinMemberService getInstance() {
		if(jms==null) {
			jms=new JoinMemberService();
		}//end if
		return jms;
	}//getInstance
	
	public boolean checkMem(CheckMemberVO cmVO) {
		boolean flag=false;
		System.out.println(cmVO);
		String checkMem=JoinMemberDAO.getInstance().selectCheckMem(cmVO);
		
		if(checkMem==null) {
			flag=true;
		}//end if
		return flag;
	}//checkMem
	
	public boolean checkBus(CheckMemberVO cmVO) {
		boolean flag=false;
		
		String checkBus=JoinMemberDAO.getInstance().selectCheckBus(cmVO);
		if(checkBus==null) {
			flag=true;
		}//end if
		return flag;
	}//checkBus
	
	public void plusMem(JoinMemberVO jmVO) {
		JoinMemberDAO.getInstance().insertMem(jmVO);
		
	}//plusMember
	
	public void plusBus(JoinMemberVO jmVO) {
		JoinMemberDAO.getInstance().insertBus(jmVO);
		
	}//plusMember
	
	public boolean checkIdDup(String id) {
		boolean flag=false;
		
		String checkIdDup=JoinMemberDAO.getInstance().selectIdDup(id);
		if(checkIdDup==null) {
			flag=true;
		}//end if
		return flag;
				
	}//checkIdDup
	
	
}//class
