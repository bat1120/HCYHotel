package kr.co.sist.user.hotelsearch;

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
}
