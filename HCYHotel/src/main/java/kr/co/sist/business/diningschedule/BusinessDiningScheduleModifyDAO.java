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
//	public static void main(String[] args) {
//		BusinessDiningScheduleModifyDAO bdsmDAO=new BusinessDiningScheduleModifyDAO();
//		DiningSearchVO dsVO =new DiningSearchVO();
//		dsVO.setId("sajang1");
//		dsVO.setDiningcode("D000001");
//		System.out.println(bdsmDAO.selectDiningSchedule(dsVO));
//	}
}
