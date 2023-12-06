package kr.co.sist.admin.manageMem;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminManageMemController {
	
	@GetMapping("/admin/goManageMem.do")
	public String goManageMem(Model model, String memFlag) {
		AdminManageMemService amms = AdminManageMemService.getInstance();
		
		
		if("mem".equals(memFlag)) {
			model.addAttribute("memList",amms.loadMem());
			return "admin/manageMem/manageMem"; 
		}//if
		
		model.addAttribute("busList",amms.loadBus());
		return "admin/manageMem/manageBus"; 
	}//goManageMem
}//class
