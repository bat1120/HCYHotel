package kr.co.sist.business.manage;

import java.net.http.HttpRequest;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BusinessManageController {
	
	@GetMapping("/BusinessManage/businessHotelMain.do")
	public String goBookingManage(HttpSession session,Model model) {
		session.setAttribute("id", "sajang1");
		
		List<String> list=new ArrayList<String>();
		
		list=HotelManageService.getInstance().searchHotelList(session.getAttribute("id").toString());
		
		model.addAttribute("hotelName",list);
		
		return "BusinessManage/businessmanage_hotel_main";
	}//goBookingManage
	@ResponseBody
	@GetMapping("/BusinessManage/use_ajax.do")
	public String dailyBookingList(Model model,HttpSession session,HttpServletRequest request) {
		
//		List<BusinessHotelDomain> list=new ArrayList<BusinessHotelDomain>();
//		list=HotelManageService.getInstance().searchBookingList(session.getAttribute("id").toString());
		
		CreateJson cj=new CreateJson();
		SearchHotelVO shVO=new SearchHotelVO();
		shVO.setDate(request.getParameter("inputdate"));
		shVO.setHotelName(request.getParameter("selectedValue"));
		
		JSONObject jsonObj=cj.createJson(session, shVO);
		
//		model.addAttribute("jsonObj",jsonObj.toJSONString());
		return jsonObj.toJSONString();
	}//dailyBookingList
	
	public String cancelBooking(HttpSession session,String hotelCode) {
		return "";
	}//cancelBooking
	
	
}//class
