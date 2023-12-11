package kr.co.sist.admin.dashboard;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.admin.dao.MyBatiseHandler;
import kr.co.sist.admin.dao.MyBatiseHandlerAdmin;

public class AdminDashboardDAO {
	private static AdminDashboardDAO adDAO;
	private AdminDashboardDAO() {
	}//constructor
	public static AdminDashboardDAO getInstance() {
		if(adDAO==null) {adDAO = new AdminDashboardDAO();}
		return adDAO;
	}//getInstance

	public DashboardDomain selectDashboardDomain() {
		MyBatiseHandlerAdmin mbh = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		DashboardDomain dd = ss.selectOne("kr.co.sist.admin.dashboardMapper.selectDashboard");
		mbh.closeHandler(ss);
		return dd;
	}//selectDashboardDomain
}//class
