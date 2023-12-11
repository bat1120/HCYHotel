package kr.co.sist.business.dining;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.business.dao.MyBatiseHandlerBusiness;

public class DiningManageDAO {
	private static DiningManageDAO dmDAO;
	
	private DiningManageDAO() {
		
	}
	
	public static DiningManageDAO getInstance() {
		if(dmDAO==null) {
			dmDAO=new DiningManageDAO();
		}
		return dmDAO;
	}
	
	public List<BusinessDiningDomain> selectDining(String id){
		List<BusinessDiningDomain> list=new ArrayList<BusinessDiningDomain>();
		
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.business.diningModifyMapper.selectDining",id);
		mbh.closeHandler(ss);
		
		return list;
	}
}
