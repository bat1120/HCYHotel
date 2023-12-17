package kr.co.sist.user.hotelinfo;

public class HotelInfoDAO {
	private static HotelInfoDAO hiDAO;
	
	private HotelInfoDAO() {
	}//constructor
	
	public static HotelInfoDAO getInstance() {
		if(hiDAO==null) {
			hiDAO=new HotelInfoDAO();
		}//end if
		return hiDAO;
	}//getInstance
}
