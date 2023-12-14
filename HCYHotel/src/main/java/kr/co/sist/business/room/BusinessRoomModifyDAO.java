package kr.co.sist.business.room;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import kr.co.sist.business.dao.MyBatiseHandlerBusiness;

/**
 * @author user
 *
 */
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
		
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.business.roomModifyMapper.selectAllRoomList",id);
		
		return list;
	}
	
	public List<RoomListDomain> selectRoomList(SelectRoomVO srVO){
List<RoomListDomain> list=new ArrayList<RoomListDomain>();
		
MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.business.roomModifyMapper.selectRoomList",srVO);
		
		return list;
	}
	
	public List<HotelListDomain> selectAllHotelList(String id){
		List<HotelListDomain> list=new ArrayList<HotelListDomain>();
		
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.business.roomModifyMapper.selectHotel",id);
		
		return list;
	}
	public List<RoomTypeDomain> selectRoomTypeList(String hotelcode){
		List<RoomTypeDomain> list=new ArrayList<RoomTypeDomain>();
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.business.roomModifyMapper.roomtype",hotelcode);
		System.out.println(list);
		return list;
	}
	public void insertRoomType(RoomTypeVO rtVO) {
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		ss.selectOne("kr.co.sist.business.roomModifyMapper.insertRoomType",rtVO);
		mbh.closeHandler(ss);
	}
	public RoomTypeInfoDomain selectRoomTypeinfo(String typecode) {
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		 
		SqlSession ss=mbh.getMyBatisHandler(false);
		RoomTypeInfoDomain rtid=ss.selectOne("kr.co.sist.business.roomModifyMapper.selectRoomTypeInfo",typecode);
		return rtid;
	}
}
