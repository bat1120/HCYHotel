package kr.co.sist.business.manage;

import java.net.http.HttpRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BusinessManageController {
	
	@GetMapping("/BusinessManage/businessHotelMain.do")
	public String goBookingManage(HttpSession session) {
		session.setAttribute("asdf", "ajwl");
		return "BusinessManage/businessmanage_hotel";
	}//goBookingManage
	
	public String cancelBooking(HttpSession session,String hotelCode) {
		return "";
	}
}//class
