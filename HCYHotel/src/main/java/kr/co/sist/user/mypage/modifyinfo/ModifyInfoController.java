package kr.co.sist.user.mypage.modifyinfo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ModifyInfoController {

	@GetMapping("/user/mypage/check_to_modify.do")
	public String goCheckPass() {
		return "/user/mypage/check_to_modify";
	}//goCheckPass
	@GetMapping("/user/mypage/modify_info.do")
	public String checkPass() {
		return "/user/mypage/modify_Info";
	}//checkPass
	
	/*
	 * @GetMapping("user/mypage/modify_info.do") public String changeInfo() { return
	 * "user/mypage/myhotelreservation"; }//changeInfo
	 */	
	
	
}//class
