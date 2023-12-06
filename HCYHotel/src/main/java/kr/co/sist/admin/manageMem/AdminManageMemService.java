package kr.co.sist.admin.manageMem;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import kr.co.sist.encryption.Encryption;

public class AdminManageMemService {
	private static AdminManageMemService amms;
	private AdminManageMemDAO ammDAO;
	private AdminManageMemService() {
	}//constructor
	
	public static AdminManageMemService getInstance() {
		if(amms==null) {amms=new AdminManageMemService();}
		return amms;
	}//getInstance
	
	public List<MemberDomain> loadMem(){
		List<MemberDomain> list = null;
		ammDAO = AdminManageMemDAO.getInstance();
		list = ammDAO.selectMem();
		Encryption e= Encryption.getInstance();
//		for(MemberDomain md : list) {
//			try {
//				md.setName(e.decryption(md.getName()));
//				md.setEmail(e.decryption(md.getEmail()));
//			} catch (NoSuchAlgorithmException e1) {
//				e1.printStackTrace();
//			} catch (UnsupportedEncodingException e2) {
//				e2.printStackTrace();
//			} catch (GeneralSecurityException e3) {
//				e3.printStackTrace();
//			}//catch
//		}//for
		
		return list;
	}//loadMem
	
	public List<BusinessDomain> loadBus(){
		List<BusinessDomain> list = null;
		ammDAO = AdminManageMemDAO.getInstance();
		list = ammDAO.selectBus();
		Encryption e= Encryption.getInstance();
//		for(MemberDomain md : list) {
//			try {
//				md.setName(e.decryption(md.getName()));
//			} catch (NoSuchAlgorithmException e1) {
//				e1.printStackTrace();
//			} catch (UnsupportedEncodingException e2) {
//				e2.printStackTrace();
//			} catch (GeneralSecurityException e3) {
//				e3.printStackTrace();
//			}//catch
//		}//for
		
		return list;
	}//loadMem
}//class
