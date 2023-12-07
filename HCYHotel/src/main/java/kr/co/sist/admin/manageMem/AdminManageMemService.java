package kr.co.sist.admin.manageMem;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.encryption.Encryption;

@Service
public class AdminManageMemService {
	@Autowired
	private AdminManageMemDAO ammDAO;
	@Autowired
	private  Encryption e;
	
	public List<MemberDomain> loadMem(){
		List<MemberDomain> list = null;
		list = ammDAO.selectMem();
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
		list = ammDAO.selectBus();
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
	
	public List<MemInfoDomain> loadMemInfo(){
		List<MemInfoDomain> list = null;
		list = ammDAO.;
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
