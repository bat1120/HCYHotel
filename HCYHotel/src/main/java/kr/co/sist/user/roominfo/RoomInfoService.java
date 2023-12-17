package kr.co.sist.user.roominfo;

import java.util.List;

import kr.co.sist.user.hotelsearch.HotelSearchDAO;
import kr.co.sist.user.hotelsearch.RoomTypeDomain;

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
	
	public List<RoomTypeDomain> showRoomList(String hotelcode){
		RoomInfoDAO riDAO=RoomInfoDAO.getInstance();
		
		List<RoomTypeDomain>showRoomList=riDAO.selectRoomList(hotelcode);
		return showRoomList;
	}//showRoomList
}//class
