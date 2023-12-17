package kr.co.sist.user.roominfo;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.user.hotelsearch.RoomTypeDomain;

@Controller
public class RoomInfoController {
	
	@GetMapping("/user/hotel/room/user_room_list.do")
	public String roomList(Model model,String hotelcode) {
		RoomInfoService ris=RoomInfoService.getInstance();
		List<RoomTypeDomain>roomList=ris.showRoomList(hotelcode);
		model.addAttribute("roomList",roomList);
		System.out.println("룸 리스트"+roomList);
		
		return "user/hotel/room/user_room_list"; 
	}//roomInfo
	
	@GetMapping("/user/hotel/room/user_room_info.do")
	public String roomInfo() {
		return "user/hotel/room/user_room_info"; 
	}//roomInfo
	
	
}
