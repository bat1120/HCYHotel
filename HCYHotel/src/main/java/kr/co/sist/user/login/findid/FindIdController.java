package kr.co.sist.user.login.findid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/findId")
public class FindIdController {
	
	

	@GetMapping("/findIdPass_check.do")
	public String goIdCheck() {
		
		return "user/findId/findIdPass_check";
	}//goIdCheck
	
	@GetMapping("/user_find_id.do")
	public String findId(FindIdVO fiVO, Model model) {
		
		
		return "user/findId/user_find_id";
	}//findId
	
	@GetMapping("/business_find_id.do")
	public String findIdBusiness(FindIdVO fiVO, Model model) {
		
		
		return "user/findId/business_find_id";
	}//findIdBusiness
	
	@PostMapping("/user_id_result.do")
	public String resultFindId(FindIdVO fiVO, Model model) {
		FindIdService fis=FindIdService.getInstance();
		FindIdDomain fid=fis.checkId(fiVO);
		
		if(fid==null) {
			model.addAttribute("finderror","회원정보를 다시 확인하여주십시오");
			return "user/findId/find_error";
		}else {
			model.addAttribute("name",fid.getName());
			model.addAttribute("id",fid.getId());
			model.addAttribute("inputdate",fid.getInputDate());
			return "user/findId/user_result_id";
		}//end else
	}//resultFindId
	
	@PostMapping("/business_id_result.do")
	public String resultFindIdBusiness(FindIdVO fiVO, Model model) {
		FindIdService fis=FindIdService.getInstance();
		FindIdDomain fid=fis.checkIdBus(fiVO);
		
		if(fid==null) {
			model.addAttribute("finderror","회원정보를 다시 확인하여주십시오");
			return "user/findId/find_error";
		}else {
			model.addAttribute("name",fid.getName());
			model.addAttribute("id",fid.getId());
			model.addAttribute("inputdate",fid.getInputDate());
			return "user/findId/business_result_id";
		}//end else
	}//resultFindIdBusiness
	
	
}
