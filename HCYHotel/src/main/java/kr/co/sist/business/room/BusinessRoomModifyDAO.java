package kr.co.sist.business.room;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import kr.co.sist.business.dao.MyBatiseHandler;

public class BusinessRoomModifyDAO {
	private static BusinessRoomModifyDAO brmDAO;
	
	private BusinessRoomModifyDAO() {
		
	}
	
	public static BusinessRoomModifyDAO getInstance() {
		if(brmDAO==null) {
			brmDAO=new BusinessRoomModifyDAO();
		}
		return brmDAO;
	}
	
	public List<RoomListDomain> selectAllRoomList(String id){
		List<RoomListDomain> list=new ArrayList<RoomListDomain>();
		
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.business.roomModifyMapper.selectAllRoomList",id);
		
		return list;
	}
	
	public List<RoomListDomain> selectRoomList(SelectRoomVO srVO){
List<RoomListDomain> list=new ArrayList<RoomListDomain>();
		
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.business.roomModifyMapper.selectRoomList",srVO);
		
		return list;
	}
	
	public List<HotelListDomain> selectAllHotelList(String id){
		List<HotelListDomain> list=new ArrayList<HotelListDomain>();
		
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.business.roomModifyMapper.selectHotel",id);
		
		return list;
	}
	public List<>
}
