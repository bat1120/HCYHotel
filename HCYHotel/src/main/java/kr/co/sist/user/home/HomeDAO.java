package kr.co.sist.user.home;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.user.sjh.dao.MyBatiseHandler;

public class HomeDAO {
	private static HomeDAO hDAO;
	
	private HomeDAO() {
	}//constructor
	
	public static HomeDAO getInstance() {
		if(hDAO==null) {
			hDAO=new HomeDAO();
		}//end if
		return hDAO;
	}//getInstance

	public List<HotelDomain> getRecommendedHotels() {
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		
		return ss.selectList("kr.co.sist.user.sjh.homeMapper.getRecommendedHotels");
	}//getRecommendedHotels
	
	public List<HotelDomain> getRisingHotels() {
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		
		return ss.selectList("kr.co.sist.user.sjh.homeMapper.getRisingHotels");
	}//getRisingHotels
	
	public List<HotelDomain> getHotHotels() {
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		
		return ss.selectList("kr.co.sist.user.sjh.homeMapper.getHotHotels");
	}
}
