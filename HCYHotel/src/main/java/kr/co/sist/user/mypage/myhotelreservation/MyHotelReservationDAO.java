package kr.co.sist.user.mypage.myhotelreservation;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class MyHotelReservationDAO {

	public List<MyHotelDomain> selectHotelReservation( String id ){
		List<MyHotelDomain> list=null;
		
		return list; 
	}//selectHotelReservation
	
	public int insertHotelReview( ReviewVO rVO ) {
		int cnt=0;
		
		return cnt;
	}//insertHotelReview
}//class
