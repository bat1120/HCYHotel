package kr.co.sist.admin.notice;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.sist.admin.paging.PagingDomain;
import kr.co.sist.admin.paging.PagingSearchVO;
import kr.co.sist.admin.paging.PagingService;

@Controller
public class AdminNoticeController {
	@Autowired
	private AdminNoticeService ans;
	@Autowired
	private PagingService ps;
	
	@RequestMapping(value = "/admin/goManageNotice.do",method = {RequestMethod.GET,RequestMethod.POST})
	public String goNotice(Model model) {
		
		NoticePagingVO npVO = new NoticePagingVO();
		npVO.setStartNum(1);
		npVO.setEndNum(10);
		List<LoadNoticeDomain> list = ans.loadNotice(npVO);
		model.addAttribute("noticeList",list);
		
		PagingSearchVO psVO = new PagingSearchVO();
		psVO.setCurrentPage(1);
		psVO.setPageScale(10);
		psVO.setTableName("notice");
		PagingDomain pd = ps.getPDomain(psVO);
		model.addAttribute("paging",pd);
		
		return "admin/manageNotice/manageNotice";
	}//goNotice
	
	@ResponseBody
	@PostMapping("/admin/noticePagingAjax.do")
	public String noticePaging(PagingSearchVO psVO) {
		NoticePagingVO npVO = new NoticePagingVO();
		psVO.setTableName("notice");
		psVO.setPageScale(10);
		PagingDomain pd = ps.getPDomain(psVO);
		npVO.setEndNum(pd.getEndNum());
		npVO.setStartNum(pd.getStartNum());
		
		List<LoadNoticeDomain> list = ans.loadNotice(npVO);
		
		JSONObject tempJson = null;
		JSONArray jsonList = new JSONArray();
		for(LoadNoticeDomain lnd : list) {
			tempJson = new JSONObject();
			tempJson.put("noticeCode", lnd.getNoticeCode());
			tempJson.put("title", lnd.getTitle());
			tempJson.put("viewCnt", lnd.getViewCnt());
			tempJson.put("inputDate", lnd.getInputDate().toString());
			jsonList.add(tempJson);
		}//for
		JSONObject result = new JSONObject();
		result.put("noticeList", jsonList);
		
		return result.toJSONString();
	}//noticePaging
	
	@PostMapping("/admin/goNoticeDetail.do")
	public String goNoticeDetail(Model model, String noticeCode) {
		
		model.addAttribute("noticeDetail",ans.loadNoticeDetail(noticeCode)); 
		
		return "admin/manageNotice/noticeDetail";
	}//goNoticeDetail
	
	@PostMapping("/admin/eraseNotice.do")
	public String eraseNotice(Model model,String noticeCode) {
		try {
		ans.expungeNotice(noticeCode);
		}catch(PersistenceException pe) {
			model.addAttribute("msg","공지사항 삭제가 정상적으로 진행되지 않았습니다.");
			model.addAttribute("url","goManageNotice.do");
			return "forward:msg.do";
		}//catch
		model.addAttribute("msg","공지사항 삭제가 정상적으로 진행되었습니다.");
		model.addAttribute("url","goManageNotice.do");
		return "forward:msg.do";
	}//eraseNotice
	
	@PostMapping("/admin/modifyNotice.do")
	public String modifyNotice(NoticeInfoVO niVO, Model model) {
		if(ans.fixNoticeInfo(niVO)) {
			model.addAttribute("msg","성공적으로 수정하였습니다.");
			model.addAttribute("url","goManageNotice.do");
			return "forward:msg.do";
		}//if
		model.addAttribute("msg","수정중에 문제가 발생했습니다. 다시 시도해주세요!");
		model.addAttribute("url","goNoticeDetail.do");
		return "forward:msg.do";
	}//modifyNotice
	
	@GetMapping("/admin/goNewNotice.do")
	public String goNewNotice() {
		return "admin/manageNotice/writeNotice";
	}//goNewNotice
	
	@PostMapping("/admin/newNotice.do")
	public String newNotice(WriteNoticeVO wnVO, Model model) {
		ans.writeNotice(wnVO);
		model.addAttribute("msg","성공적으로 저장하였습니다.");
		model.addAttribute("url","goManageNotice.do");
		return "forward:msg.do";
	}//newNotice
}//class
