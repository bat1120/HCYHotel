package kr.co.sist.user.hotelsearch;

import java.util.List;

import kr.co.sist.user.home.HomeDAO;
import kr.co.sist.user.home.HotelDomain;
import kr.co.sist.user.hotelinfo.HotelInfoService;

public class HotelSearchService {
	private static HotelSearchService hss;
	
	private HotelSearchService() {
	}//constructor
	
	public static HotelSearchService getInstance() {
		if(hss==null) {
			hss=new HotelSearchService();
		}//end if
		return hss;
	}//getInstance
	;
	
	public List<HotelDomain> getHotelBySearch(SearchVO searchVO) {
		
		HotelSearchDAO hDAO= HotelSearchDAO.getInstance();
		
		List<HotelDomain> hotels = hDAO.getHotelBySearch(searchVO);
		
		for(HotelDomain hotel : hotels) {
			searchVO.setHotelcode(hotel.getHotelcode());
			List<RoomTypeDomain> roomTypeList = hDAO.getRoomTypeBySearch(searchVO);
			hotel.setRoomtypes(roomTypeList);
		}//end for

		return hotels;
	}//getHotelBySearch
}//class
