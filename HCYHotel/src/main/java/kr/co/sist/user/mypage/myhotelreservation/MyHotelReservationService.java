package kr.co.sist.user.mypage.myhotelreservation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MyHotelReservationService {

	@Autowired
	private MyHotelReservationDAO mhrDAO;
	
	public List<MyHotelDomain> searchHotelReservation( String id ) {
		List<MyHotelDomain> list=null;
		
		return list;
	}//searchHotelReservatoin
	
	public boolean writeHotelReview( ReviewVO rVO ) {
		boolean result=false;
		
		return result;
	}//writeHotelReview
}//class
