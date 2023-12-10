package kr.co.sist.user.join;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/user/join")
public class JoinMemberController {
	
	@GetMapping("/join_check.do")
	public String goJoinCheck(CheckMemberVO cmVO) {
		
//		if("1".equals(cmVO.getMemberFlag())) {
//			return "user/join/user_join_check";
//		}//end if
//		
//		return "user/join/business_join_check";
		return "user/join/join_check";
	}//goJoinCheck
	
	@GetMapping("/user_join_check.do")
	public String checkMember(Model model, CheckMemberVO cmVO) {
		
//		System.out.println("con"+cmVO.getMemberFlag());
//		JoinMemberService jms=JoinMemberService.getInstance();
//		
//		if("1".equals(cmVO.getMemberFlag())) {
//			if(jms.checkMem(cmVO)) {
//				return "user/join/user_join";
//			}//end if
//		}else if("2".equals(cmVO.getMemberFlag())){
//			if(jms.checkBus(cmVO)) {
//				return "user/join/business_join";
//			}//end if
//		}//end if
//		model.addAttribute("joinerror","가입 정보를 다시 확인해주세요");
//		return "user/login/login_error";
		return "user/join/user_join_check";
	}//checkMember
	
	@PostMapping("/user_join_check.do")
	public String checkMemberExist(Model model, CheckMemberVO cmVO) {
		
		JoinMemberService jms=JoinMemberService.getInstance();
		if(!jms.checkMem(cmVO)) {
//			System.out.println("+++++++++++++++++++++++++++++");
			model.addAttribute("joinerror", "이미 가입된 회원입니다");
			return "user/join/join_error";
		}
//		System.out.println("----------------------------");
		return "user/join/user_join";
	}//checkMember
	
	@GetMapping("/business_join_check.do")
	public String checkBusiness() {
		return "user/join/business_join_check";
	}//checkBusiness
	
	@GetMapping("/user_join.do")
	public String joinMember() {
		return "user/join/user_join";
	}//joinMember
	
	@PostMapping("/user_join.do")
	public String joinMemberInsert(JoinMemberVO jmVO) {
		JoinMemberService.getInstance().insertMem(jmVO);
		return "user/join/user_join";
	}//joinMember
	
	@GetMapping("/business_join.do")
	public String joinBuisiness() {
		return "user/join/business_join";
	}//joinBuisiness
	
	public String idDup(String id, Model model) {
		String idDup="";
		
		return idDup;
	}//idDup
	
}//class
