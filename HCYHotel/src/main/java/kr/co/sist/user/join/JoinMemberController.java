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
	
	@GetMapping("/business_join_check.do")
	public String checkBusiness(Model model, CheckMemberVO cmVO) {
		return "user/join/business_join_check";
	}
	
	@PostMapping("/user_join_exist.do")
	public String checkMemberExist(Model model, CheckMemberVO cmVO) {
		
		JoinMemberService jms=JoinMemberService.getInstance();
		if(!jms.checkMem(cmVO)) {
//			System.out.println("+++++++++++++++++++++++++++++");
			model.addAttribute("joinerror", "이미 가입된 회원입니다");
			return "user/join/join_error";
		}//end if
//		System.out.println("----------------------------");
		return "user/join/user_join";
	}//checkMemberExist
	
	@PostMapping("/business_join_exist.do")
	public String checkBusinessExist(Model model, CheckMemberVO cmVO) {
		
		System.out.println("사업자요");
		JoinMemberService jms=JoinMemberService.getInstance();
		if(!jms.checkBus(cmVO)) {
			model.addAttribute("joinerror","이미 가입된 사업자입니다.");
			return "user/join/join_error";
		}//end if
		return "user/join/business_join";
	}//checkBusinessExist
	
	
	
	@PostMapping("/user_join.do")
	public String joinMemberInsert(JoinMemberVO jmVO,Model model) {
		JoinMemberService.getInstance().plusMem(jmVO);
		
		// 회원가입 성공 메시지를 설정
	    model.addAttribute("successMessage", "회원가입이 완료되었습니다. 로그인 해주십시오.");
		
		return "user/join/user_join";
	}//joinMemberInsert
	
	@PostMapping("/business_join.do")
	public String joinBuisinessInsert(JoinMemberVO jmVO,Model model) {
		JoinMemberService.getInstance().plusBus(jmVO);
		
		return "user/join/business_join";
	}//joinBuisinessInsert
	
	public String idDup(String id, Model model) {
		String idDup="";
		
		return idDup;
	}//idDup
	
}//class
