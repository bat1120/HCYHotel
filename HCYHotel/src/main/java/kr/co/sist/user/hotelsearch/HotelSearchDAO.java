package kr.co.sist.user.hotelsearch;

public class HotelSearchDAO {
	private static HotelSearchDAO hsDAO;
	
	private HotelSearchDAO() {
	}//constructor
	
	public static HotelSearchDAO getInstance() {
		if(hsDAO==null) {
			hsDAO=new HotelSearchDAO();
		}//end if
		return hsDAO;
	}//getInstance
}
