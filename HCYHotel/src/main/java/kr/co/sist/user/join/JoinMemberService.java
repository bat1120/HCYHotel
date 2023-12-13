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
	
	public void plusMem(JoinMemberVO jmVO) throws NoSuchAlgorithmException, UnsupportedEncodingException, GeneralSecurityException {
		
		System.out.println(jmVO.getPassword());
		
		String enPassword=encryption.directEncryption(jmVO.getPassword());
		
		jmVO.setPassword(enPassword);
//		System.out.println(enPassword);
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
	
	public boolean checkIdDupBusiness(String id) {
		boolean flag=false;
		
		String checkIdDup=JoinMemberDAO.getInstance().selectIdDupBusiness(id);
		if(checkIdDup==null) {
			flag=true;
		}//end if
		return flag;
		
	}//checkIdDupBusiness
	
	
}//class
