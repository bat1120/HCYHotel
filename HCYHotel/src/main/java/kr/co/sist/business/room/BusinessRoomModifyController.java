package kr.co.sist.business.room;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BusinessRoomModifyController {
	//��� ��õ�� ������ ������ ��õ�� �������ϳ� : ������Ŭ
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
	@ResponseBody
	@GetMapping("/BusinessManage/use_ajax_room_modify.do")
	public String selectDining(HttpSession session, Model model,HttpServletRequest request) {
		String id=(String)session.getAttribute("id");
		String hotelcode=request.getParameter("hotelCode");
		JSONObject json=new JSONObject();
		CreateJson cj=new CreateJson();
		if("���Ǽ���".equals(hotelcode)) {
			json=cj.createJson(id);
		}else {
			SelectRoomVO srVO=new SelectRoomVO();
			srVO.setHotelcode(hotelcode);
			srVO.setId((String)session.getAttribute("id"));
			json=cj.createJson(srVO);
		}
		
		return json.toJSONString();
	}
	
	@GetMapping("/BusinessManage/businessroomType.do")
	public String roomTypeList(HttpSession session,HttpServletRequest request,Model model) {
		request.getParameter("codeHid");
		System.out.println(request.getParameter("hotelcode"));
		
		return "/BusinessManage/businessmanage_room_type";
	}
	
}
