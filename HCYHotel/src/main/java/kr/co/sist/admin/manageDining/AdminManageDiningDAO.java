package kr.co.sist.admin.manageDining;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.admin.dao.MyBatiseHandlerAdmin;

@Component
public class AdminManageDiningDAO {

	public List<DiningDomain> selectDiningList(){
		MyBatiseHandlerAdmin mbha = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbha.getMyBatisHandler(true);
		List<DiningDomain> list = ss.selectList("kr.co.sist.admin.dining.selectDining");
		
		return list;
	}//selectDiningList
	
	public DiningInfoDomain selectDiningInfo(String diningCode) {
		MyBatiseHandlerAdmin mbha = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbha.getMyBatisHandler(true);
		DiningInfoDomain did = ss.selectOne("kr.co.sist.admin.dining.selectDiningDetail",diningCode);
		return did;
	}///selectDiningInfo
	
	public List<DiningReviewDomain> selectDiningReview(String diningCode){
		MyBatiseHandlerAdmin mbha = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbha.getMyBatisHandler(true);
		List<DiningReviewDomain> list = ss.selectList("kr.co.sist.admin.dining.selectDiningReview",diningCode);
		return list;
	}//selectDiningReview
	
	public List<String> selectDiningFiles(String diningCode) {
		MyBatiseHandlerAdmin mbha =  MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbha.getMyBatisHandler(true);
		List<String> list = ss.selectList("kr.co.sist.admin.dining.selectDiningFile",diningCode);
		return list;
	}//selectDiningFiles
	
	public int deleteDining(String diningCode) {
		MyBatiseHandlerAdmin mbha = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbha.getMyBatisHandler(true);
		int flag = ss.delete("kr.co.sist.admin.dining.deleteDining",diningCode);
		return flag;
	}//deleteDining
}//class
