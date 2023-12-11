package kr.co.sist.business.room;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BusinessRoomModifyController {
	//용바 방천격 월섬각 폭쇄진 붗천퇴 나머지하나 : 딜사이클
	@GetMapping("/BusinessManage/business_room_modify.do")
	public String goManageRoomBooking(HttpSession session,Model model) {
		session.setAttribute("id", "sajang1");
		String id=(String)session.getAttribute("id");
		List<RoomListDomain> roomList=BusinessRoomModifyService.getInstance().loadAllRoomList(id);
		List<HotelListDomain> hotelList=BusinessRoomModifyService.getInstance().loadAllHotelList(id);
		
	
		
		model.addAttribute("roomList",roomList);
		model.addAttribute("hotelList",hotelList);
		
		return "BusinessManage/businessmanage_room";
	}
	
}
