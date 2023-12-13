package kr.co.sist.business.room;

import java.util.ArrayList;
import java.util.List;

public class BusinessRoomModifyService {

	private static BusinessRoomModifyService brms;
	
	private BusinessRoomModifyService() {
		
	}
	
	public static BusinessRoomModifyService getInstance() {
		if(brms==null) {
			brms=new BusinessRoomModifyService();
		}
		return brms;
	}
	
	public List<RoomListDomain> loadAllRoomList(String id){
		List<RoomListDomain> list=new ArrayList<RoomListDomain>();
		
		list=BusinessRoomModifyDAO.getInstance().selectAllRoomList(id);
		
		return list;
	}
	public List<HotelListDomain> loadAllHotelList(String id){
		List<HotelListDomain> list=new ArrayList<HotelListDomain>();
		
		list=BusinessRoomModifyDAO.getInstance().selectAllHotelList(id);
		
		return list;
	}
}