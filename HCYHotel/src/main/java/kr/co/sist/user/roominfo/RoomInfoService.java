package kr.co.sist.user.roominfo;

import kr.co.sist.user.hotelsearch.HotelSearchDAO;

public class RoomInfoService {
	private static RoomInfoService ris;
	
	private RoomInfoService() {
	}//constructor
	
	public static RoomInfoService getInstance() {
		if(ris==null) {
			ris=new RoomInfoService();
		}//end if
		return ris;
	}//getInstance
}//class
