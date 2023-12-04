package kr.co.sist.admin.dashboard;

public class AdminDashboardService {
	private static AdminDashboardService ads;
	
	private AdminDashboardService() {
	}//constructor
	
	public static AdminDashboardService getInstance() {
		if(ads == null) {ads = new AdminDashboardService();}
		return ads;
	}//getInstance
	

	public DashboardDomain loadDashboard() {
		DashboardDomain dd = new DashboardDomain();
		
		dd=AdminDashboardDAO.getInstance().selectDashboardDomain();
		
		return dd;
	}//loadDashboard
}//class
