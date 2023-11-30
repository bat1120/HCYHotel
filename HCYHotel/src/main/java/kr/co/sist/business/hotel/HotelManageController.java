package kr.co.sist.business.hotel;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HotelManageController {

	@GetMapping("/BusinessManage/businessHotel.do")
	public String goManageHotel(HttpSession session) {
		session.setAttribute("id", "bat1120");
		
		return "BusinessManage/businessmanage_hotel";
	}
}
