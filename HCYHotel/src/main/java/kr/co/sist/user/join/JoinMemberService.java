package kr.co.sist.user.join;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.encryption.Encryption;

@Service
public class JoinMemberService {
	private static JoinMemberService jms;
	
	@Autowired
	private Encryption encryption;
	
	private JoinMemberService() {
	}//constructor
	
	public static JoinMemberService getInstance() {
		if(jms==null) {
			jms=new JoinMemberService();
		}//end if
		return jms;
	}//getInstance
	
	public boolean checkMem(CheckMemberVO cmVO) {
	    boolean flag = false;

	    try {
	        String checkMem = JoinMemberDAO.getInstance().selectCheckMem(cmVO);

	        encryption = new Encryption();
	        String enTel = encryption.encryption(cmVO.getTel());
	        cmVO.setTel(enTel);
	        if (checkMem == null) {
	            flag = true;
	        }//end if
	    } catch (Exception e) {
	        // 예외 처리
	        e.printStackTrace(); // 또는 로깅 등
	        flag = false; // 예외 발생 시 체크 실패로 처리
	    }//end catch

	    return flag;
	}//checkMem

	
	public boolean checkBus(CheckMemberVO cmVO) {
	    boolean flag = false;

	    try {
	        String checkBus = JoinMemberDAO.getInstance().selectCheckBus(cmVO);

	        encryption = new Encryption();
	        String enTel = encryption.encryption(cmVO.getTel());
	        cmVO.setTel(enTel);
	        if (checkBus == null) {
	            flag = true;
	        }//end if
	    } catch (Exception e) {
	        // 예외 처리
	        e.printStackTrace(); // 또는 로깅 등
	        flag = false; // 예외 발생 시 체크 실패로 처리
	    }//end catch

	    return flag;
	}//checkBus
	
	public void plusMem(JoinMemberVO jmVO) {
	    try {
//	        System.out.println("1111service~~~~~~~~~~~~~~~" + jmVO.getPassword());

	        encryption = new Encryption();
	        String enPassword = encryption.directEncryption(jmVO.getPassword());
	        String enTel=encryption.encryption(jmVO.getTel());
	        jmVO.setTel(enTel);
	        jmVO.setPassword(enPassword);

//	        System.out.println("222service~~~~~~~~~~~~~~~" + jmVO.getPassword());

	        JoinMemberDAO.getInstance().insertMem(jmVO);
	    } catch (Exception e) {
	        // 예외 처리
	        e.printStackTrace(); // 또는 로깅 등
	        throw new RuntimeException("회원가입 중 오류가 발생했습니다.", e);
	    }//end catch
	}//plusMem


	
	public void plusBus(JoinMemberVO jmVO) {
		
		try {
//	        System.out.println("1111service~~~~~~~~~~~~~~~" + jmVO.getPassword());

	        encryption = new Encryption();
	        String enPassword = encryption.directEncryption(jmVO.getPassword());
	        String enTel=encryption.encryption(jmVO.getTel());
	        jmVO.setTel(enTel);
	        jmVO.setPassword(enPassword);

//	        System.out.println("222service~~~~~~~~~~~~~~~" + jmVO.getPassword());
			
			JoinMemberDAO.getInstance().insertBus(jmVO);
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException("회원가입 중 오류가 발생했습니다",e);
		}
		
	}//plusBus
	
	public boolean checkIdDup(String id) {
		boolean flag=false;
		
		String checkIdDup=JoinMemberDAO.getInstance().selectIdDup(id);
		if(checkIdDup==null) {
			flag=true;
		}//end if
		return flag;
				
	}//checkIdDup
	
	public boolean checkIdDupBusiness(String id) {
		boolean flag=false;
		
		String checkIdDup=JoinMemberDAO.getInstance().selectIdDupBusiness(id);
		if(checkIdDup==null) {
			flag=true;
		}//end if
		return flag;
		
	}//checkIdDupBusiness
	
	
}//class
