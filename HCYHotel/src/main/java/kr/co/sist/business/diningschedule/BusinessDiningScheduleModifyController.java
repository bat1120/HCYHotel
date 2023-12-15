package kr.co.sist.business.diningschedule;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class BusinessDiningScheduleModifyController {
	@GetMapping("/BusinessManage/businessDiningSchedule.do")
	public String goManageDiningSchedule(HttpSession session,HttpServletRequest request,Model model) {
		String id=(String)session.getAttribute("id");
		String diningcode=request.getParameter("diningcode");
		String hotelcode=request.getParameter("hotelcode");
		System.out.println(hotelcode);
		DiningSearchVO dsVO=new DiningSearchVO();
		dsVO.setId(id);
		dsVO.setDiningcode(diningcode);
		List<DiningScheduleListDomain> list=new ArrayList<DiningScheduleListDomain>();
		
		list=BusinessDiningScheduleModifyService.getInstance().searchDiningSchedule(dsVO);
		
		model.addAttribute("diningcode",diningcode);
		model.addAttribute("hotelcode",hotelcode);
		model.addAttribute("scheduleList",list);
		
		return "BusinessManage/businessmanage_dining_schedule";
	}
	
	@GetMapping("/BusinessManage/businessDiningSchedule_new.do")
	public String newDiningSchedule(HttpSession session,HttpServletRequest request,Model model) {
		String hotelcode=request.getParameter("hotelcode");
		List<DiningNameListDomain> list=BusinessDiningScheduleModifyService.getInstance().selectDining(hotelcode);
		
		model.addAttribute("dininglist",list);
		return "BusinessManage/businessmanage_diningschedule_info_empty";
	}
	@PostMapping("/BusinessManege/businessdiningschedule_insert.do")
	public String insertDiningSchedule(HttpSession session,HttpServletRequest request,Model model) {
		System.out.println(request.getParameter("diningcode"));
		
		return "BusinessManage/businessmanage_dining_schedule";
	}
}
