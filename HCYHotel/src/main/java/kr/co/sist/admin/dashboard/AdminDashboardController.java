package kr.co.sist.admin.dashboard;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminDashboardController {
	
	@RequestMapping(value="/admin/goDashboard.do", method= {RequestMethod.GET,RequestMethod.POST})
	public String goDashboard(Model model) {
		AdminDashboardService ads = AdminDashboardService.getInstance();
		DashboardDomain dd = ads.loadDashboard();
		
		model.addAttribute("dailyVisitor",dd.getDailyVisitor());
		model.addAttribute("newDining",dd.getNewDining());
		model.addAttribute("newHotel",dd.getNewHotel());
		model.addAttribute("newReview",dd.getNewReview());
		model.addAttribute("weeklyBusVisitor",dd.getWeeklyBusVisitor());
		model.addAttribute("weeklyMemVisitor",dd.getWeeklyMemVisitor());
		model.addAttribute("weeklyVisitor",dd.getWeeklyVisitor());
		
		return "admin/dashboard/dashboard";
	}//goDashboard
}//class
