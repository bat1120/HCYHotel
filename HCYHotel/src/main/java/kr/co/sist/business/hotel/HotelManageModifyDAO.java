package kr.co.sist.business.hotel;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.business.dao.MyBatiseHandler;

public class HotelManageModifyDAO {

	private static HotelManageModifyDAO hmmDAO;
	
	private HotelManageModifyDAO() {
		
	}
	
	public static HotelManageModifyDAO getInstance() {
		if(hmmDAO==null) {
			hmmDAO=new HotelManageModifyDAO();
		}
		return hmmDAO;
	}
	
	public List<HotelListDomain> selectHotelList(String id){
		List<HotelListDomain> list=new ArrayList<HotelListDomain>();
		
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);	
		list=ss.selectList("kr.co.sist.business.hotelModifyMapper.searchhotelInfo",id);
		list=ss.selectList("kr.co.sist.business.hotelModifyMapper.searchHotelSido",id);
		list=ss.selectList("kr.co.sist.business.hotelModifyMapper.searchhotelRate",id);
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public static void main(String[] args) {
		List<HotelListDomain> list=new HotelManageModifyDAO().selectHotelList("sajang1");
		System.out.println(list);
	}
}
