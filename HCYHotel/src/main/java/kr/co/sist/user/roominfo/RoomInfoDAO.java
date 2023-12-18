package kr.co.sist.user.roominfo;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.user.hotelsearch.RoomTypeDomain;
import kr.co.sist.user.sjh.dao.MyBatiseHandler;

public class RoomInfoDAO {
	private static RoomInfoDAO riDAO;
	
	private RoomInfoDAO() {
	}//constructor
	
	public static RoomInfoDAO getInstance() {
		if(riDAO==null) {
			riDAO=new RoomInfoDAO();
		}//end if
		return riDAO;  
	}//getInstance
	
//	public List<RoomTypeDomain>selectRoomList(String hotelcode){
//		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
//		SqlSession ss=mbh.getMyBatisHandler(false);
//		
//		return ss.selectList("kr.co.sist.user.sjh.roomMapper.selectRoomType", hotelcode);
//	}//selectRoomList
}
