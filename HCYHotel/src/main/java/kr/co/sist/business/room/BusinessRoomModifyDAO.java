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
		mbh.closeHandler(ss);
		return list;
	}
	
	public List<RoomListDomain> selectRoomList(SelectRoomVO srVO){
List<RoomListDomain> list=new ArrayList<RoomListDomain>();
		
MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.business.roomModifyMapper.selectRoomList",srVO);
		mbh.closeHandler(ss);
		return list;
	}
	
	public List<HotelListDomain> selectAllHotelList(String id){
		List<HotelListDomain> list=new ArrayList<HotelListDomain>();
		
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.business.roomModifyMapper.selectHotel",id);
		mbh.closeHandler(ss);
		return list;
	}
	public List<RoomTypeDomain> selectRoomTypeList(String hotelcode){
		List<RoomTypeDomain> list=new ArrayList<RoomTypeDomain>();
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.business.roomModifyMapper.roomtype",hotelcode);
		mbh.closeHandler(ss);
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
		mbh.closeHandler(ss);
		return rtid;
	}
	public void updateRoomType(RoomTypeInfoVO rtiVO) {
	    MyBatiseHandlerBusiness mbh = MyBatiseHandlerBusiness.getInstance();
	    SqlSession ss = mbh.getMyBatisHandler(true);
	    ss.update("kr.co.sist.business.roomModifyMapper.updateRoomType", rtiVO);
	    mbh.closeHandler(ss);
	    
	}
	public List<RoomTypeCodeDomain> selectRoomTypeCode(String hotelcode) {
		 MyBatiseHandlerBusiness mbh = MyBatiseHandlerBusiness.getInstance();
		    SqlSession ss = mbh.getMyBatisHandler(true);
		    List<RoomTypeCodeDomain> list= ss.selectList("kr.co.sist.business.roomModifyMapper.selectTypecode", hotelcode);
		    mbh.closeHandler(ss);
		    return list;
	}
	public List<ServiceDomain> selectService(){
		 MyBatiseHandlerBusiness mbh = MyBatiseHandlerBusiness.getInstance();
		    SqlSession ss = mbh.getMyBatisHandler(true);
		    List<ServiceDomain> list= ss.selectList("kr.co.sist.business.roomModifyMapper.selectService");
		    mbh.closeHandler(ss);
		    return list;
	}
	public void insertRoom(RoomVO rVO) {
		MyBatiseHandlerBusiness mbh = MyBatiseHandlerBusiness.getInstance();
	    SqlSession ss = mbh.getMyBatisHandler(true);
	    ss.insert("kr.co.sist.business.roomModifyMapper.insertRoom",rVO);
	    mbh.closeHandler(ss);
	}
	public void updateRoom(RoomUpdateVO ruVO) {
		MyBatiseHandlerBusiness mbh = MyBatiseHandlerBusiness.getInstance();
	    SqlSession ss = mbh.getMyBatisHandler(true);
	    ss.update("kr.co.sist.business.roomModifyMapper.updateRoom",ruVO);
	    mbh.closeHandler(ss);
	}
	public RoomInfoDomain selectRoom(String roomcode) {
		MyBatiseHandlerBusiness mbh = MyBatiseHandlerBusiness.getInstance();
	    SqlSession ss = mbh.getMyBatisHandler(true);
	    RoomInfoDomain rid=ss.selectOne("kr.co.sist.business.roomModifyMapper.selectRoomInfo",roomcode);
	    mbh.closeHandler(ss);
	    return rid;
	}
}
