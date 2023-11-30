package kr.co.sist.business.room;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BusinessRoomModifyController {

	@GetMapping("/BusinessManage/business_room_modify.do")
	public String goManageRoomBooking(HttpSession session) {
		session.setAttribute("id", "asdf");
		return "BusinessManage/businessmanage_room";
	}
	
}
