package kr.co.sist.admin.manageMem;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.admin.dao.MyBatiseHandlerAdmin;
@Component
public class AdminManageMemDAO {
//	@Autowired
//	private MyBatiseHandlerAdmin mbh;
	
	public List<MemberDomain> selectMem(){
		List<MemberDomain> list = null;
		MyBatiseHandlerAdmin mbh = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(true);
		list = ss.selectList("kr.co.sist.admin.manageMemMapper.selectMem");
		
		return list;
	}//selectMem
	
	public List<BusinessDomain> selectBus(){
		List<BusinessDomain> list = null;
		MyBatiseHandlerAdmin mbh = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(true);
		list = ss.selectList("kr.co.sist.admin.manageMemMapper.selectBus");
		
		return list;
	}//selectMem
	
	public MemInfoDomain selectMemInfo(MemDtailPagingVO mVO){
		MemInfoDomain mid =null;
		MyBatiseHandlerAdmin mbh = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(true);
		mid = ss.selectOne("kr.co.sist.admin.manageMemMapper.selectMemInfo",mVO);
		mbh.closeHandler(ss);
		return mid;
	}//selectMemInfo
	
	public List<RoomReviewDomain> selectRoomReview(MemDtailPagingVO mVO){
		List<RoomReviewDomain> list = null;
		MyBatiseHandlerAdmin mbha = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbha.getMyBatisHandler(true);
		list = ss.selectList("kr.co.sist.admin.manageMemMapper.selectRoomReview",mVO);
		mbha.closeHandler(ss);
		
		return list;
	}//selectRoomReview
	
	public List<DiningReviewDomain> selectDiningReview(MemDtailPagingVO mVO){
		List<DiningReviewDomain> list = null;
		
		MyBatiseHandlerAdmin mbha = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbha.getMyBatisHandler(true);
		list = ss.selectList("kr.co.sist.admin.manageMemMapper.selectDiningReview",mVO);
		mbha.closeHandler(ss);
		
		return list;
	}//selectRoomReview
	
	public void deleteMem(DeleteMemVO dmVO) throws PersistenceException {
		MyBatiseHandlerAdmin mbha = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbha.getMyBatisHandler(true);
		ss.delete("kr.co.sist.admin.manageMemMapper.deleteMem",dmVO );
	}//deleteMem
}//class
