package kr.co.sist.admin.manageMem;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminManageMemController {
	
	@GetMapping("/admin/goManageMem.do")
	public String goManageMem(Model model, String memFlag) {
		
		
		if("mem".equals(memFlag)) {
			AdminManageMemService amms = AdminManageMemService.getInstance();
			model.addAttribute("memList",amms.loadMem());
			return "admin/manageMem/manageMem"; 
		}//if
		
		return "admin/manageMem/manageBus"; 
	}//goManageMem
}//class
