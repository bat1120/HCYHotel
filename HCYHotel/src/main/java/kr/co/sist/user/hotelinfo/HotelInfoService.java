package kr.co.sist.user.hotelinfo;

import kr.co.sist.user.hotelbooking.HotelBookingService;

public class HotelInfoService {
	private static HotelInfoService his;
	
	private HotelInfoService() {
	}//constructor
	
	public static HotelInfoService getInstance() {
		if(his==null) {
			his=new HotelInfoService();
		}//end if
		return his;
	}//getInstance
	
	public HotelInfoDomain showHotelInfo(String hotelcode) {
		HotelInfoDAO hiDAO=HotelInfoDAO.getInstance();
		
		HotelInfoDomain hid=hiDAO.selectHotelInfo(hotelcode);
		return hid;
	}//showHotelInfo
}//class
