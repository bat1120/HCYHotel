package kr.co.sist.admin.manageDining;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class AdminManageDiningService {
	@Autowired
private AdminManageDiningDAO amdDAO;
	
	public List<DiningDomain> loadDiningList(){
		List<DiningDomain> list = amdDAO.selectDiningList();
		return list;
	}//loadDiningList
	
	public DiningInfoDomain loadDiningInfo(String diningCode) {
		DiningInfoDomain did = amdDAO.selectDiningInfo(diningCode);
		return did;
	}//loadDiningInfo
	
	public List<DiningReviewDomain> loadDiningReview(String diningCode){
		List<DiningReviewDomain> list = amdDAO.selectDiningReview(diningCode);
		return list;
	}//loadDiningReview
	
	public List<String> loadDiningFiles(String diningCode){
		List<String> list = amdDAO.selectDiningFiles(diningCode);
		return list;
	}//loadDiningFiles
	
	public boolean expungeDining(String diningCode) {
		boolean flag = false;
		if(amdDAO.deleteDining(diningCode)==1) {flag=true;}
		return flag;
	}//expungeDining
	
}//class
