package kr.co.sist.business.manage;

import java.util.ArrayList;
import java.util.List;

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
		
		
		
		return list;
	}
}
