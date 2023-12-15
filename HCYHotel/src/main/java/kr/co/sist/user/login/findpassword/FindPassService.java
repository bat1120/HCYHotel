package kr.co.sist.user.login.findpassword;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.encryption.Encryption;
import kr.co.sist.user.login.findid.FindIdService;

@Service
public class FindPassService {
	private static FindPassService fps;
	@Autowired
	private Encryption encryption;
	
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
	    boolean flag = false;
	    try {
	        encryption = new Encryption();
	        
	        String enPassword = encryption.directEncryption(cpVO.getPassword());
	        String enPasswordConfirm = encryption.directEncryption(cpVO.getPasswordConfirm());
	        
	        cpVO.setPassword(enPassword);
	        cpVO.setPasswordConfirm(enPasswordConfirm);

	        int cnt = FindPassDAO.getInstance().updatePass(cpVO);
	        if (cnt > 0) {
	            flag = true;
	        }//end if
	    } catch (Exception e) {
	        // 예외 처리
	        e.printStackTrace(); 
	        flag = false; 
	    }//end catch

	    return flag;
	}//changePass

	
	public boolean changeBusinessPass(ChangePassVO cpVO) {
		 boolean flag = false;
		 try {
		     encryption = new Encryption();
		        
		     String enPassword = encryption.directEncryption(cpVO.getPassword());
		     String enPasswordConfirm = encryption.directEncryption(cpVO.getPasswordConfirm());
		        
		     cpVO.setPassword(enPassword);
		     cpVO.setPasswordConfirm(enPasswordConfirm);
		     
		     int cnt = FindPassDAO.getInstance().updatePassBusiness(cpVO);
		     if (cnt > 0) {
		         flag = true;
		     }//end if
		 } catch (Exception e) {
		     e.printStackTrace(); 
		     flag = false; 
		 }//end catch

		    return flag;
	}//changeBusinessPass
	
}//class
