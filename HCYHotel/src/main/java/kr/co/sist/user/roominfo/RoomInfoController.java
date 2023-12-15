package kr.co.sist.user.roominfo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RoomInfoController {
	
	@GetMapping("/user/hotel/room/user_room_list.do")
	public String roomList() {
		return "user/hotel/room/user_room_list"; 
	}//roomInfo
	
	@GetMapping("/user/hotel/room/user_room_info.do")
	public String roomInfo() {
		return "user/hotel/room/user_room_info"; 
	}//roomInfo
	
	
}
