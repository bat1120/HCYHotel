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
	public String goIdPassCheck() {
		
		return "user/findId/findIdPass_check";
	}//goIdPassCheck
	
	@GetMapping("/user_find_id.do")
	public String findId(FindIdVO fiVO, Model model) {
		return "user/findId/user_find_id";
	}//findId
	
	@PostMapping("/user_id_result.do")
	public String resultFindId() {
		return "user/findId/user_result_id";
	}//resultFindId
	
	@GetMapping("/business_find_id.do")
	public String businessFindId() {
		return "user/findId/business_find_id";
	}//businessFindId
	
	@GetMapping("/business_id_result.do")
	public String businessResultFindId() {
		return "user/findId/business_result_id";
	}//businessResultFindId
}
