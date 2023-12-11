package kr.co.sist.user.notice;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NoticeController {

	@GetMapping("user/notice/user_notice.do")
	public String userNotice( Model model ) {
		
		NoticeService ns = NoticeService.getInstance();
		model.addAttribute("noticeList", ns.showAllNoticeList() );
		
		return "user/notice/user_notice";
	}//userNotice
	
	@GetMapping("user/notice/user_notice_detail.do")
	public String userNoticeDetail( String noticeCode, Model model ) {
		noticeCode="N000007";
		
		NoticeService ns=NoticeService.getInstance();
		NoticeDomain nd=ns.searchNoticeDetail(noticeCode);
		
		model.addAttribute("notice", nd);
		
		
		return "user/notice/user_notice_detail";
	}//userNoticeDetail
}//class
