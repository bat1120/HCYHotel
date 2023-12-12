package kr.co.sist.admin.manageHotel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class AdminManageHotelService {
@Autowired
private AdminManageHotelDAO amhDAO;

public List<HotelDomain> loadHotelList(){
	List<HotelDomain> list = null;
	list = amhDAO.selectHotelList();
	return list;
}//loadHotelList

public HotelInfoDomain loadHotelDetail(String hotelCode) {
	HotelInfoDomain hid = amhDAO.selectHotelInfo(hotelCode);
	return hid;
}//loadHotelDetail

public List<HotelReviewDomain> loadHotelReview(String hotelCode){
	List<HotelReviewDomain> list = amhDAO.selectHotelReview(hotelCode);
	return list;
}//loadHotelReview

public void expungeHotel(String hotelCode) {
	amhDAO.deleteHotel(hotelCode);
}//expungeHotel
}//class
