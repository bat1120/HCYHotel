package kr.co.sist.user.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NoticeController {

	@GetMapping("user/notice/user_notice.do")
	public String userNotice() {
		return "user/notice/user_notice";
	}//userNotice
	
	@GetMapping("user/notice/user_notice_detail.do")
	public String userNoticeDetail() {
		return "user/notice/user_notice_detail";
	}//userNoticeDetail
}//class
