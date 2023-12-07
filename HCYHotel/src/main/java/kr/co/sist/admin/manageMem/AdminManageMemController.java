package kr.co.sist.admin.manageMem;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminManageMemController {
	@Autowired
	private AdminManageMemService amms;
	
	@GetMapping("/admin/goManageMem.do")
	public String goManageMem(Model model, String memFlag) {
		
		if("mem".equals(memFlag)) {
			model.addAttribute("memList",amms.loadMem());
			return "admin/manageMem/manageMem"; 
		}//if
		
		model.addAttribute("busList",amms.loadBus());
		return "admin/manageMem/manageBus"; 
	}//goManageMem
	
	@GetMapping("/admin/memDetail.do")
	public String memDetail(Model model) {
		
		//model.addAttribute("mem",amms.);
		return "admin/manageMem/memDetail";
	}//memDetail
}//class
