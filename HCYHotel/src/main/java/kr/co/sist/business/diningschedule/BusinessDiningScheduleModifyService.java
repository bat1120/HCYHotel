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
}
