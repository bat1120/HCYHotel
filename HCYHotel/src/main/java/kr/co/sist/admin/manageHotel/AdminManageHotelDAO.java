package kr.co.sist.admin.manageHotel;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.admin.dao.MyBatiseHandlerAdmin;

@Component
public class AdminManageHotelDAO {

	public List<HotelDomain> selectHotelList(){
		MyBatiseHandlerAdmin mbha = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbha.getMyBatisHandler(true);
		List<HotelDomain> list = ss.selectList("kr.co.sist.admin.hotel.selectHotel");
		return list;
	}//selectHotelList
	
	public HotelInfoDomain selectHotelInfo(String hotelCode) {
		MyBatiseHandlerAdmin mbha = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbha.getMyBatisHandler(true);
		HotelInfoDomain hid = ss.selectOne("kr.co.sist.admin.hotel.selectHotelDetail",hotelCode);
		
		return hid;
	}//selectHotelInfo
	
	public List<HotelReviewDomain> selectHotelReview(String hotelCode) {
		MyBatiseHandlerAdmin mbha = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbha.getMyBatisHandler(true);
		List<HotelReviewDomain> list = ss.selectList("kr.co.sist.admin.hotel.selectHotelReview",hotelCode);
		return list;
	}//selectHotelReview
	
	public void deleteHotel(String hotelCode) {
		
		MyBatiseHandlerAdmin mbha = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbha.getMyBatisHandler(true);
		ss.delete("kr.co.sist.admin.hotel.deleteHotel",hotelCode);
		
	}//deleteHotel
}//class
