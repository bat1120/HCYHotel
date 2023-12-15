package kr.co.sist.user.hotelbooking;

import kr.co.sist.user.home.HomeService;

public class HotelBookingService {
	private static HotelBookingService hbs;
	
	private HotelBookingService() {
	}//constructor
	
	public static HotelBookingService getInstance() {
		if(hbs==null) {
			hbs=new HotelBookingService();
		}//end if
		return hbs;
	}//getInstance
}
