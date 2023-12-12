package kr.co.sist.admin.manageDining;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminManageDiningController {
	@Autowired
private AdminManageDiningService amds;
	@RequestMapping(value="/admin/goManageDining.do",method = {RequestMethod.POST,RequestMethod.GET})
	public String goManageDining(Model model) {
		
		List<DiningDomain> list = amds.loadDiningList();
		model.addAttribute("diningList",list);
		
		return "admin/manageDining/manageDining";
	}//goManageDining
	
	@PostMapping("/admin/diningDetail.do")
	public String goDiningInfo(Model model, String diningCode) {
		model.addAttribute("diningInfo",amds.loadDiningInfo(diningCode));
		model.addAttribute("reviewList",amds.loadDiningReview(diningCode));
		model.addAttribute("files",amds.loadDiningFiles(diningCode));
		
		return "admin/manageDining/diningDetail";
	}//goDiningInfo
	
	@PostMapping("/admin/removeDining.do")
	public String removeDining(Model model, String diningCode) {
		if(amds.expungeDining(diningCode)) {
			model.addAttribute("msg","다이닝 삭제가 정상적으로 진행되었습니다.");
			model.addAttribute("url","goManageDining.do");
			return "forward:msg.do";
		}//if
		model.addAttribute("msg","다이닝 삭제가 정상적으로 진행되지 않았습니다.");
		model.addAttribute("url","goManageDining.do");
		return "forward:msg.do";
	}//removeDining
}//class
