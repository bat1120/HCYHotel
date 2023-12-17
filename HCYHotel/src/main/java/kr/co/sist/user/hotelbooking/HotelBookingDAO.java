package kr.co.sist.user.hotelbooking;

public class HotelBookingDAO {
	private static HotelBookingDAO hbDAO;
	
	private HotelBookingDAO() {
	}//constructor
	
	public static HotelBookingDAO getInstance() {
		if(hbDAO==null) {
			hbDAO=new HotelBookingDAO();
		}//end if
		return hbDAO;
	}//getInstance
}
