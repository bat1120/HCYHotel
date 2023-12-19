package kr.co.sist.user.hotelinfo;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.user.sjh.dao.MyBatiseHandler;

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
	
	public HotelInfoDomain selectHotelInfo(String hotelcode) {
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		HotelInfoDomain hid=ss.selectOne("kr.co.sist.user.sjh.hotelSearchMapper.selectHotelDetail",hotelcode);
		return hid;
	}//selectHotelInfo
}//class
