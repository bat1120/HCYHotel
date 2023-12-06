package kr.co.sist.admin.manageMem;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.sist.admin.dao.MyBatiseHandler;

public class AdminManageMemDAO {
	private static AdminManageMemDAO ammDAO;
	private AdminManageMemDAO() {
	}//constructor
	public static AdminManageMemDAO getInstance() {
		if(ammDAO==null) {ammDAO=new AdminManageMemDAO();}
		return ammDAO;
	}//getInstance
	
	public List<MemberDomain> selectMem(){
		List<MemberDomain> list = null;
		MyBatiseHandler mbh = MyBatiseHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(true);
		list = ss.selectList("kr.co.sist.admin.manageMemMapper.selectMem");
		
		return list;
	}//selectMem
	
	public List<BusinessDomain> selectBus(){
		List<BusinessDomain> list = null;
		MyBatiseHandler mbh = MyBatiseHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(true);
		list = ss.selectList("kr.co.sist.admin.manageMemMapper.selectBus");
		
		return list;
	}//selectMem
}//class
