package kr.co.sist.business.diningschedule;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BusinessDiningScheduleModifyController {
	@GetMapping("/BusinessManage/businessDiningSchedule.do")
	public String goManageDiningSchedule(HttpSession session,HttpServletRequest request,Model model) {
		String id=(String)session.getAttribute("id");
		String diningcode=request.getParameter("diningcode");
		DiningSearchVO dsVO=new DiningSearchVO();
		dsVO.setId(id);
		dsVO.setDiningcode(diningcode);
		List<DiningScheduleListDomain> list=new ArrayList<DiningScheduleListDomain>();
		
		list=BusinessDiningScheduleModifyService.getInstance().searchDiningSchedule(dsVO);
		
		
		model.addAttribute("scheduleList",list);
		
		return "BusinessManage/businessmanage_dining_schedule";
	}
}
