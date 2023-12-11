package kr.co.sist.business.dining;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BusinessDiningModifyController {
	@GetMapping("/BusinessManage/businessDining.do")
	public String goManageDining(HttpSession session,Model model) {
		String id=(String)session.getAttribute("id");
		
		List<BusinessDiningDomain> list=new ArrayList<BusinessDiningDomain>();
		list=DiningManageService.getInstance().searchDining(id);
		
		model.addAttribute("diningList",list);
		
		return "BusinessManage/businessmanage_dining";
	}
}
