package kr.co.sist.user.login.findid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.encryption.Encryption;

@Service
public class FindIdService {
	private static FindIdService fis;
	@Autowired
	private Encryption encryption;
	private FindIdService() {
	}//constuctor
	
	public static FindIdService getInstance(){
		if(fis==null) {
			fis=new FindIdService();
		}//end if
		return fis;
	}//getInstance
	
	public FindIdDomain checkId(FindIdVO fiVO) {
	    FindIdDomain fid = null;
	    try {
	        encryption = new Encryption();
	        String enTel = encryption.encryption(fiVO.getTel());
	        fiVO.setTel(enTel);

	        fid = FindIdDAO.getInstance().selectCheckId(fiVO);
	    } catch (Exception e) {
	        e.printStackTrace(); 
	    }//end catch
	    return fid;
	}//checkId

	
	public FindIdDomain checkIdBus(FindIdVO fiVO) {
	    FindIdDomain fid = null;
	    try {
	        encryption = new Encryption();
	        String enTel = encryption.encryption(fiVO.getTel());
	        fiVO.setTel(enTel);

	        fid = FindIdDAO.getInstance().selectCheckIdBus(fiVO);
	    } catch (Exception e) {
	        e.printStackTrace(); 
	    }//end catch
	    return fid;
	}//checkIdBus
}//class
