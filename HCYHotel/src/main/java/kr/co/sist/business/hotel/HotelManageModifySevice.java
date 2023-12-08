package kr.co.sist.business.hotel;

import java.util.ArrayList;
import java.util.List;

public class HotelManageModifySevice {
	
	private static HotelManageModifySevice hmms;
	
	private HotelManageModifySevice() {
		
	}
	
	public static HotelManageModifySevice getInstance() {
		if(hmms==null) {
			hmms=new HotelManageModifySevice();
		}
		return hmms;
	}

	public List<HotelListDomain> loadHotelList(String id){
		List<HotelListDomain> list=new ArrayList<HotelListDomain>();
		
		HotelManageModifyDAO hmmDAO =HotelManageModifyDAO.getInstance();
		list=hmmDAO.selectHotelList(id);
		
		
		return list;
	}
	
}
