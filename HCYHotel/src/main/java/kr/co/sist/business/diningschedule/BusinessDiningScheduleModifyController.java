package kr.co.sist.business.diningschedule;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class BusinessDiningScheduleModifyController {
	@GetMapping("/BusinessManage/businessDiningSchedule.do")
	public String goManageDiningSchedule(HttpSession session,HttpServletRequest request,Model model) {
		String id=(String)session.getAttribute("id");
		String diningcode=request.getParameter("diningcode");
		String hotelcode=request.getParameter("hotelcode");
		System.out.println(hotelcode);
		DiningSearchVO dsVO=new DiningSearchVO();
		dsVO.setId(id);
		dsVO.setDiningcode(diningcode);
		List<DiningScheduleListDomain> list=new ArrayList<DiningScheduleListDomain>();
		
		list=BusinessDiningScheduleModifyService.getInstance().searchDiningSchedule(dsVO);
		
		model.addAttribute("diningcode",diningcode);
		model.addAttribute("hotelcode",hotelcode);
		model.addAttribute("scheduleList",list);
		
		return "BusinessManage/businessmanage_dining_schedule";
	}
	
	@GetMapping("/BusinessManage/businessDiningSchedule_new.do")
	public String newDiningSchedule(HttpSession session,HttpServletRequest request,Model model) {
		String hotelcode=request.getParameter("hotelcode");
		List<DiningNameListDomain> list=BusinessDiningScheduleModifyService.getInstance().selectDining(hotelcode);
		
		model.addAttribute("dininglist",list);
		return "BusinessManage/businessmanage_diningschedule_info_empty";
	}
	
	@PostMapping("/BusinessManage/businessdiningschedule_insert.do")
	public String insertDiningSchedule(HttpSession session,HttpServletRequest request,Model model) {
		
		DiningScheduleVO dsVO=new DiningScheduleVO();
		dsVO.setDiningcode(request.getParameter("selectHotel"));
		dsVO.setCategory(request.getParameter("category"));
		dsVO.setPplcnt(Integer.parseInt(request.getParameter("pplcnt")));
		dsVO.setPrice(Integer.parseInt(request.getParameter("price")));
		String dateString = request.getParameter("scheduledate");

		// 날짜 포맷 지정
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date utilDate= new java.util.Date();
		java.sql.Date sqlDate=new Date(0);
		try {
		    // 문자열을 Date 객체로 변환
			 // 문자열을 java.util.Date 객체로 파싱
		    utilDate = dateFormat.parse(dateString);

		    // java.util.Date를 java.sql.Date로 변환
		    sqlDate = new java.sql.Date(utilDate.getTime());
		    
		  
		    
		    // 변환된 날짜 활용
		    System.out.println("입력된 날짜: " + sqlDate.toString());
		} catch (Exception e) {
		    // 예외 처리
		    e.printStackTrace();
		}
		dsVO.setScheduledate(sqlDate);
		System.out.println(dsVO);
		BusinessDiningScheduleModifyService.getInstance().insertDiningSchedule(dsVO);
		return "BusinessManage/businessmanage_dining_schedule";
	}
	@GetMapping("/BusinessManage/businessDiningSchedule_modify.do")
	public String goScheduleModify(HttpSession session,HttpServletRequest request,Model model) {
		System.out.println(request.getParameter("diningcode"));
		System.out.println(request.getParameter("hotelcode"));
		System.out.println(request.getParameter("schedulecode"));
		List<DiningNameListDomain> list=BusinessDiningScheduleModifyService.getInstance().selectDining(request.getParameter("hotelcode"));
		DiningScheduleInfoDomain dsid=BusinessDiningScheduleModifyService.getInstance().searchSchedule(request.getParameter("schedulecode"));
		
		
		
		model.addAttribute("dininglist",list);
		model.addAttribute("diningcode",request.getParameter("diningcode"));
		model.addAttribute("schedule",dsid);
		return "BusinessManage/businessmanage_diningschedule_info";
	}
	@PostMapping("/BusinessManage/businessDiningSchedule_update.do")
	public String updateSchedule(HttpSession session,HttpServletRequest request,Model model) {
		DiningScheduleVO dsVO=new DiningScheduleVO();
		dsVO.setCategory(request.getParameter("category"));
		dsVO.setDiningcode(request.getParameter("schedulecode"));
		dsVO.setPplcnt(Integer.parseInt(request.getParameter("pplcnt")));
		dsVO.setPrice(Integer.parseInt(request.getParameter("price")));
		dsVO.setSchedulecode(request.getParameter("diningcode"));
		String dateString = request.getParameter("scheduledate");

		// 날짜 포맷 지정
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date utilDate= new java.util.Date();
		java.sql.Date sqlDate=new Date(0);
		try {
		    // 문자열을 Date 객체로 변환
			 // 문자열을 java.util.Date 객체로 파싱
		    utilDate = dateFormat.parse(dateString);

		    // java.util.Date를 java.sql.Date로 변환
		    sqlDate = new java.sql.Date(utilDate.getTime());
		    
		  
		    
		    // 변환된 날짜 활용
		    System.out.println("입력된 날짜: " + sqlDate.toString());
		} catch (Exception e) {
		    // 예외 처리
		    e.printStackTrace();
		}
		dsVO.setScheduledate(sqlDate);
		System.out.println(dsVO);
		BusinessDiningScheduleModifyService.getInstance().updateSchedule(dsVO);
		
		
		return "redirect:businessDining.do";
	}
	@GetMapping("/BusinessManage/delete_schedule.do")
	public String deleteSchedule(HttpServletRequest request) {
		String schedulecode=request.getParameter("schedulecode");
		BusinessDiningScheduleModifyService.getInstance().deleteSchedule(schedulecode);
		return "redirect:businessDiningSchedule.do";
	}
}
