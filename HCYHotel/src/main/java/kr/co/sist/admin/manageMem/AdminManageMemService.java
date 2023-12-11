package kr.co.sist.admin.manageMem;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
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
//		for(BusinessDomain bd : list) {
//			try {
//				md.setName(e.decryption(bd.getName()));
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
	
	public MemInfoDomain loadMemInfo(MemDtailPagingVO mVO){
		MemInfoDomain mid = null;
		mid = ammDAO.selectMemInfo(mVO);
//			try {
//				mid.setName(e.decryption(mid.getName()));
//			} catch (NoSuchAlgorithmException e1) {
//				e1.printStackTrace();
//			} catch (UnsupportedEncodingException e2) {
//				e2.printStackTrace();
//			} catch (GeneralSecurityException e3) {
//				e3.printStackTrace();
//			}//catch

		if("mem".equals(mVO.getMemFlag())) {
			List<RoomReviewDomain> roomList = ammDAO.selectRoomReview(mVO);
			for(RoomReviewDomain roomReview : roomList) {
				String content = roomReview.getContent();
				if(content.length() > 20) {
				roomReview.setContent(content.substring(0, 20)+"...");
				}//if
			}//for
			mid.setRoomReviewList(roomList);
			
			List<DiningReviewDomain> diningList = ammDAO.selectDiningReview(mVO);
			for(DiningReviewDomain diningReview : diningList) {
				String content = diningReview.getContent();
				if(content.length() > 20) {
					diningReview.setContent(content.substring(0, 20)+"...");
				}//if
			}//for
			mid.setDiningReviewList(diningList);
		}//if
		
		return mid;
	}//loadMem
	
	public MemInfoDomain loadMemReview(MemDtailPagingVO mVO){
		MemInfoDomain mid = new MemInfoDomain();

		if("room".equals(mVO.getReviewFlag())) {
			mid.setRoomReviewList(ammDAO.selectRoomReview(mVO));
			return mid;
		}//if
		mid.setDiningReviewList(ammDAO.selectDiningReview(mVO));
		return mid;
	}//loadMem
	
	public void eliMem(DeleteMemVO dmVO)  throws PersistenceException {
		if("mem".equals(dmVO.getMemFlag())) {
			dmVO.setMemFlag("MEMBER");
			ammDAO.deleteMem(dmVO);
			return;
		}//if
		dmVO.setMemFlag("BUSINESS");
		ammDAO.deleteMem(dmVO);
	}//eliMem
}//class
