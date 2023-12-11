package kr.co.sist.business.dining;

import java.util.ArrayList;
import java.util.List;

public class DiningManageService {

	private static DiningManageService dms;
	
	public static DiningManageService getInstance() {
		if(dms==null) {
			dms=new DiningManageService();
		}
		return dms;
	}
	
	public List<BusinessDiningDomain> searchDining(String id){
		List<BusinessDiningDomain> list=new ArrayList<BusinessDiningDomain>();
		
		list=DiningManageDAO.getInstance().selectDining(id);
		
		return list;
	}
}
