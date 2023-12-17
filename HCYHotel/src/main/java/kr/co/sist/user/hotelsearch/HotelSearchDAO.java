package kr.co.sist.user.hotelsearch;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.user.home.HotelDomain;
import kr.co.sist.user.sjh.dao.MyBatiseHandler;

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
	
	public List<HotelDomain> getHotelBySearch(SearchVO searchVO) {
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		
		return ss.selectList("kr.co.sist.user.sjh.hotelSearchMapper.getHotelBySearch", searchVO);
	}
	
	public List<RoomTypeDomain> getRoomTypeBySearch(SearchVO searchVO) {
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		
		return ss.selectList("kr.co.sist.user.sjh.hotelSearchMapper.getRoomTypeBySearch", searchVO);
	}
}
