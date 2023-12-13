package kr.co.sist.user.login.findpassword;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/user/findPass")
public class FindPassController {

	@GetMapping("/findIdPass_check.do")
	public String goPassCheck() {
		
		return "user/findId/findIdPass_check";
	}//goPassCheck
	
	@GetMapping("/user_find_pass.do")
	public String searchMemberPass(FindPassVO fpVO, Model model) {
		return "user/findPass/user_find_pass";
	}//searchMemberPass
	
	@GetMapping("/business_find_pass.do")
	public String searchBusinessPass(FindPassVO fpVO, Model model) { 
		return "user/findPass/business_find_pass";
	}//searchBusinessPass
	
	@PostMapping("/user_result_pass.do")
	public String resetMemberPass(FindPassVO fpVO, Model model,HttpSession session) {
		FindPassService fps=FindPassService.getInstance();
		if(fps.checkMember(fpVO)) {
			session.setAttribute("id",fpVO.getId());
			return "user/findPass/user_result_pass";
		}else {
			model.addAttribute("finderror","회원정보를 다시 확인해주세요");
			return "user/findId/find_error";
		}//end else
		
	}//resetMemberPass
	
	@PostMapping("/business_result_pass.do")
	public String resetBusinessPass(FindPassVO fpVO, Model model,HttpSession session) {
		FindPassService fps=FindPassService.getInstance();
		if(fps.checkBusiness(fpVO)) {
			session.setAttribute("id",fpVO.getId());
			return "user/findPass/business_result_pass";
		}else {
			model.addAttribute("finderror","회원정보를 다시 확인해주세요");
			return "user/findId/find_error";
		}//end else
		
	}//resetBusinessPass
	
	
	
	@PostMapping("/user_update_pass.do")
	public String changeMemberPass(ChangePassVO cpVO, Model model,HttpSession session) {
		
		String id=(String) session.getAttribute("id");
		cpVO.setId(id);
		boolean success=FindPassService.getInstance().changePass(cpVO);
		if(success) {
			model.addAttribute("successMessage","비밀번호 변경이 완료되었습니다.로그인 해주십시오.");
			return "user/findPass/user_result_pass";
		}else {
			model.addAttribute("finderror","비밀번호 변경이 실패하였습니다.");
			return "user/findId/find_error";
		}
	}//changeMemberPass
	
	@PostMapping("/business_update_pass.do")
	public String changeBusinessPass(ChangePassVO cpVO, Model model,HttpSession session) {
		String id=(String) session.getAttribute("id");
		cpVO.setId(id);
		boolean success=FindPassService.getInstance().changeBusinessPass(cpVO);
		if(success) {
			model.addAttribute("successMessage","비밀번호 변경이 완료되었습니다.로그인 해주십시오.");
			return "user/findPass/business_result_pass";
		}else {
			model.addAttribute("finderror","비밀번호 변경이 실패하였습니다.");
			return "user/findId/find_error";
		}
	}//changeBusinessPass
	
	
	
}//class
