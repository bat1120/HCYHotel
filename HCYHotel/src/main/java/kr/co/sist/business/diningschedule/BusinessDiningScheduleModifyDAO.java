package kr.co.sist.business.diningschedule;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.business.dao.MyBatiseHandlerBusiness;

public class BusinessDiningScheduleModifyDAO {

	private static BusinessDiningScheduleModifyDAO bdsmDAO;
	
	public static BusinessDiningScheduleModifyDAO getInstance() {
		if(bdsmDAO==null) {
			bdsmDAO=new BusinessDiningScheduleModifyDAO();
		}
		return bdsmDAO;
	}
	
	public List<DiningScheduleListDomain> selectDiningSchedule(DiningSearchVO dsVO){
		List<DiningScheduleListDomain> list=new ArrayList<DiningScheduleListDomain>();
		
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.business.diningScheduleMapper.selectSchedule",dsVO);
		mbh.closeHandler(ss);
		
		return list;
	}
	public List<DiningNameListDomain> selectDining(String hotelcode){
		List<DiningNameListDomain> list=new ArrayList<DiningNameListDomain>();
		
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.business.diningScheduleMapper.selectDining",hotelcode);
		mbh.closeHandler(ss);
		
		return list;
	}
	public void insertDiningSchedule(DiningScheduleVO dsVO) {
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(true);
		ss.insert("kr.co.sist.business.diningScheduleMapper.insertSchedule",dsVO);
		mbh.closeHandler(ss);
	}
	public DiningScheduleInfoDomain selectSchedule(String schedulecode) {
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(true);
		DiningScheduleInfoDomain dsid=ss.selectOne("kr.co.sist.business.diningScheduleMapper.selectSchedule2",schedulecode);
		mbh.closeHandler(ss);
		return dsid;
	}
	public void updateSchedule(DiningScheduleVO dsVO) {
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(true);
		int cnt=ss.update("kr.co.sist.business.diningScheduleMapper.updateSchedule",dsVO);
		System.out.println(cnt);
		mbh.closeHandler(ss);
	}
	public void deleteSchedule(String schedulecode) {
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(true);
		ss.delete("kr.co.sist.business.diningScheduleMapper.deleteSchedule",schedulecode);
		mbh.closeHandler(ss);
	}
//	public static void main(String[] args) {
//		BusinessDiningScheduleModifyDAO bdsmDAO=new BusinessDiningScheduleModifyDAO();
//		DiningSearchVO dsVO =new DiningSearchVO();
//		dsVO.setId("sajang1");
//		dsVO.setDiningcode("D000001");
//		System.out.println(bdsmDAO.selectDiningSchedule(dsVO));
//	}
}
