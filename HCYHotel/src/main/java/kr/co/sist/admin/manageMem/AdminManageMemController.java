package kr.co.sist.admin.manageMem;

import org.apache.ibatis.exceptions.PersistenceException;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.admin.paging.PagingDomain;
import kr.co.sist.admin.paging.PagingSearchVO;
import kr.co.sist.admin.paging.PagingService;

@Controller
public class AdminManageMemController {
	@Autowired
	private AdminManageMemService amms;
	@Autowired
	private PagingService ps;
	
	@GetMapping("/admin/goManageMem.do")
	public String goManageMem(Model model, String memFlag) {
		
		if("mem".equals(memFlag)) {
			model.addAttribute("memList",amms.loadMem());
			return "admin/manageMem/manageMem"; 
		}//if
		
		model.addAttribute("busList",amms.loadBus());
		return "admin/manageMem/manageBus"; 
	}//goManageMem
	
	@GetMapping("/admin/memDetail.do")
	public String memDetail(Model model, MemDtailPagingVO mVO) {
		
		model.addAttribute("mem",amms.loadMemInfo(mVO));
		
		PagingSearchVO psVO = new PagingSearchVO();
		psVO.setCurrentPage(1);
		psVO.setTableName("ROOMREVIEW");
		psVO.setPageScale(5);
		model.addAttribute("roomPaging",ps.getPDomain(psVO));
		
		psVO.setCurrentPage(1);
		psVO.setTableName("DININGREVIEW");
		psVO.setPageScale(5);
		model.addAttribute("diningPaging",ps.getPDomain(psVO));
		return "admin/manageMem/memDetail";
	}//memDetail
	
	@GetMapping("/admin/memWithdraw.do")
	public String withdrawMem(DeleteMemVO dmVO, Model model) {
		try {
		amms.eliMem(dmVO);
		}catch(PersistenceException pe) {
			model.addAttribute("msg","회원 탈퇴가 정상적으로 진행되지 않았습니다.");
			model.addAttribute("url","goManageMem.do");
			return "forward:msg.do";
		}//catch
		model.addAttribute("msg","회원 탈퇴가 정상적으로 진행되었습니다.");
		model.addAttribute("url","goManageMem.do");
		return "forward:msg.do";
	}//withdrawMem
}//class
