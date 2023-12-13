package kr.co.sist.user.notice;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {

	@GetMapping("user/notice/user_notice.do")
	public String searchNotice( Model model ) {
		
		NoticeService ns = NoticeService.getInstance();
		model.addAttribute("noticeList", ns.discoverNotice() );
		
		return "user/notice/user_notice";
	}//userNotice
	
	@GetMapping("user/notice/user_notice_detail.do")
	public String goNoticeDetail( String noticeCode, Model model ) {
		
		NoticeService ns=NoticeService.getInstance();
		NoticeDomain nd=ns.searchNoticeDetail(noticeCode);
		
		model.addAttribute("notice", nd);
		
		
		return "user/notice/user_notice_detail";
	}//goNoticeDetail
}//class
