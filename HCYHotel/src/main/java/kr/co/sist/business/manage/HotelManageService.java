package kr.co.sist.business.manage;

import java.util.ArrayList;
import java.util.List;

public class HotelManageService {

	private static HotelManageService dms;
	
	private HotelManageService() {
		
	}//HotelManageService
	
	public static HotelManageService getInstance() {
		if(dms==null) {
			dms=new HotelManageService();
		}//if
		return dms;
	}//HotelManageService
	
	public List<String> searchHotelList(String id){
		List<String> list=new ArrayList<String>();
		
		return list;
	}//searchHotelList
	
}//class
