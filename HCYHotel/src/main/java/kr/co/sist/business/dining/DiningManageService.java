package kr.co.sist.business.dining;

import java.util.ArrayList;
import java.util.List;

public class DiningManageService {

	private static DiningManageService dms;
	
	public static DiningManageService getInstance() {
		if(dms==null) {
			dms=new DiningManageService();
		}
		return dms;
	}
	
	public List<BusinessDiningDomain> searchDining(String id){
		List<BusinessDiningDomain> list=new ArrayList<BusinessDiningDomain>();
		
		list=DiningManageDAO.getInstance().selectDining(id);
		
		return list;
	}
	public List<BusinessHotelDomain> searchHotel(String id){
		List<BusinessHotelDomain> list=new ArrayList<BusinessHotelDomain>();
		
		list=DiningManageDAO.getInstance().selectHotel(id);
		
		return list;
	}
	public void insertDining(DiningVO dVO) {
		DiningManageDAO.getInstance().insertDining(dVO);
	}
	public void insertFile(FileVO fVO) {
		DiningManageDAO.getInstance().insertFile(fVO);
	}
	public String selectDiningcode() {
		String diningcode=DiningManageDAO.getInstance().selectDiningCode();
		return diningcode;
	}
	public DiningDomain selectDiningInfo(String diningcode) {
		DiningDomain dd=DiningManageDAO.getInstance().selectDiningInfo(diningcode);
		return dd;
	}
	public List<FileDomain> searchFile(String diningcode){
		List<FileDomain> list=DiningManageDAO.getInstance().selectFilename(diningcode);
		return list;
	}
}
