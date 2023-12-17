package kr.co.sist.business.diningschedule;

import java.util.ArrayList;
import java.util.List;

public class BusinessDiningScheduleModifyService {

	private static BusinessDiningScheduleModifyService bdsms;
	
	public static BusinessDiningScheduleModifyService getInstance() {
		if(bdsms==null) {
			bdsms=new BusinessDiningScheduleModifyService();
		}
		return bdsms;
	}
	
	public List<DiningScheduleListDomain> searchDiningSchedule(DiningSearchVO dsVO){
		List<DiningScheduleListDomain> list=new ArrayList<DiningScheduleListDomain>();
		
		list=BusinessDiningScheduleModifyDAO.getInstance().selectDiningSchedule(dsVO);
		
		return list;
	}
	public List<DiningNameListDomain> selectDining(String hotelcode){
		List<DiningNameListDomain> list=BusinessDiningScheduleModifyDAO.getInstance().selectDining(hotelcode);
		return list;
	}
	public void insertDiningSchedule(DiningScheduleVO dsVO) {
		BusinessDiningScheduleModifyDAO.getInstance().insertDiningSchedule(dsVO);
	}
	public DiningScheduleInfoDomain searchSchedule(String schedulecode) {
		DiningScheduleInfoDomain dsid=BusinessDiningScheduleModifyDAO.getInstance().selectSchedule(schedulecode);
		return dsid;
	}
	public void updateSchedule(DiningScheduleVO dsVO) {
		BusinessDiningScheduleModifyDAO.getInstance().updateSchedule(dsVO);
	}
	
}
