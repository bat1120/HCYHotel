package kr.co.sist.business.manage;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.business.dao.MyBatiseHandler;

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
		
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList(id);
		mbh.closeHandler(ss);
		
		if(list==null) {
			list.add("아이디 읎다");
		}//if
		return list;
	}//selectHotelList
	public static void main(String[] arg) {
		List<String> list=new ArrayList<String>();
		list=HotelManageDAO.getInstance().selectHotelList("bat1120");
		
		System.out.println(list);
	}
	
}
