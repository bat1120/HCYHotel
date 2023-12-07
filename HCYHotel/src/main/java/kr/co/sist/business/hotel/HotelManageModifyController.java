package kr.co.sist.business.hotel;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HotelManageModifyController {

	@GetMapping("/BusinessManage/businessHotel.do")
	public String goManageHotel(HttpSession session) {
		session.setAttribute("id", "bat1120");
		
		return "BusinessManage/businessmanage_hotel";
	}

	@GetMapping("/BusinessManage/businessHotelGoModify.do")
	public String goHotelModify(Model model, String hotelCode) {
		
		return "";
	}
	@GetMapping("/BusinessManage/businessHotelModify.do")
	public String hotelModify(HotelVO hVO, HttpServletRequest request) {
		request.setAttribute("id", "123");
		
		return "";
	}
	@GetMapping("/BusinessManage/businessHotelDelete.do")
	public String hotelErase(String hotelCode) {
		
		return "";
	}
	
}