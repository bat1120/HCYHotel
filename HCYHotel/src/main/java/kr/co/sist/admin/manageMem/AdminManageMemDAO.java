package kr.co.sist.admin.manageMem;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.admin.dao.MyBatiseHandler;
@Component
public class AdminManageMemDAO {
	@Autowired
	private MyBatiseHandler mbh;
	
	public List<MemberDomain> selectMem(){
		List<MemberDomain> list = null;
		SqlSession ss = mbh.getMyBatisHandler(true);
		list = ss.selectList("kr.co.sist.admin.manageMemMapper.selectMem");
		
		return list;
	}//selectMem
	
	public List<BusinessDomain> selectBus(){
		List<BusinessDomain> list = null;
		SqlSession ss = mbh.getMyBatisHandler(true);
		list = ss.selectList("kr.co.sist.admin.manageMemMapper.selectBus");
		
		return list;
	}//selectMem
	
	public List<MemInfoDomain> selectMemInfo(){
		List<MemInfoDomain> list =null;
		SqlSession ss = mbh.getMyBatisHandler(true);
		list = ss.selectList("");
		return list;
	}//selectMemInfo
}//class
