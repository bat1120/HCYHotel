package kr.co.sist.business.manage;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.business.dao.MyBatiseHandlerBusiness;

public class HotelManageDAO {

	private static HotelManageDAO hmDAO;
	
	private HotelManageDAO() {
		
	}//constructor
	
	public static HotelManageDAO getInstance() {
		if(hmDAO==null) {
			hmDAO=new HotelManageDAO();
		}//if
		return hmDAO;
	}//getInstance
	public List<String> selectHotelList(String id){
		List<String> list=new ArrayList<String>();
		
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.business.hotelMapper.searchHotel",id);
		mbh.closeHandler(ss);
		
		return list;
	}//selectHotelList
	
//	public List<BusinessHotelDomain> searchBookingHotel(BusinessHotelVO bhVO){
		public List<BusinessHotelDomain> selectBookingHotel(SearchHotelVO shVO){
		List<BusinessHotelDomain> list=new ArrayList<BusinessHotelDomain>();
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.business.hotelMapper.searchReservation",shVO);
		mbh.closeHandler(ss);
		System.out.println(list);
		return list;
	}//searchBookingHotel
		
		public void deleteBooking(String bookingcode) {
			MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
			SqlSession ss=mbh.getMyBatisHandler(true);
			ss.delete("kr.co.sist.business.hotelMapper.deleteBooking",bookingcode);
			mbh.closeHandler(ss);
		}
		
//	public static void main(String[] arg) {
//		List<BusinessHotelDomain> list=new ArrayList<BusinessHotelDomain>();
//		list=HotelManageDAO.getInstance().selectBookingHotel("member1");
//		
//		System.out.println(list);
//	}
	
}
