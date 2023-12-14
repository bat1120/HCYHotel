package kr.co.sist.business.room;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BusinessRoomModifyController {
	// ¿ë¹Ù ¹æÃµ°Ý ¿ù¼¶°¢ Æø¼âÁø ”ÊÃµÅð ³ª¸ÓÁöÇÏ³ª : µô»çÀÌÅ¬
	@GetMapping("/BusinessManage/business_room_modify.do")
	public String goManageRoomBooking(HttpSession session, Model model) {
		session.setAttribute("id", "sajang1");
		String id = (String) session.getAttribute("id");
		List<RoomListDomain> roomList = BusinessRoomModifyService.getInstance().loadAllRoomList(id);
		List<HotelListDomain> hotelList = BusinessRoomModifyService.getInstance().loadAllHotelList(id);

		model.addAttribute("roomList", roomList);
		model.addAttribute("hotelList", hotelList);

		return "BusinessManage/businessmanage_room";
	}

	@ResponseBody
	@GetMapping("/BusinessManage/use_ajax_room_modify.do")
	public String selectDining(HttpSession session, Model model, HttpServletRequest request) {
		String id = (String) session.getAttribute("id");
		String hotelcode = request.getParameter("hotelCode");
		JSONObject json = new JSONObject();
		CreateJson cj = new CreateJson();
		if ("°´½Ç¼±ÅÃ".equals(hotelcode)) {
			json = cj.createJson(id);
		} else {
			SelectRoomVO srVO = new SelectRoomVO();
			srVO.setHotelcode(hotelcode);
			srVO.setId((String) session.getAttribute("id"));
			json = cj.createJson(srVO);
		}

		return json.toJSONString();
	}

	@GetMapping("/BusinessManage/businessroomType.do")
	public String roomTypeList(HttpSession session, HttpServletRequest request, Model model) {
		List<RoomTypeDomain> list = BusinessRoomModifyService.getInstance()
				.searchRoomType(request.getParameter("hotelcode"));
		model.addAttribute("typelist", list);
		model.addAttribute("hotelcode", request.getParameter("hotelcode"));

		return "/BusinessManage/businessmanage_room_type";
	}

	@GetMapping("/BusinessManage/businessmanage_room_type_insert.do")
	public String goRoomInsert(HttpServletRequest request, HttpSession session,Model model) {
		model.addAttribute(request.getParameter("hotelcode"));
		return "/BusinessManage/businessmanage_room_type_empty";
	}

	@PostMapping("/BusinessManage/businessRoomType_insert.do")
	public String roomTypeInsert(HttpServletRequest request, HttpSession session) {
		
		RoomTypeVO rtVO=new RoomTypeVO();
		rtVO.setAddprice(Integer.parseInt(request.getParameter("addPrice")));
		rtVO.setAmenity(request.getParameter("amenity"));
		rtVO.setBasiccapacity(Integer.parseInt(request.getParameter("basic")));
		rtVO.setHotelcode(request.getParameter("hotelcode"));
		rtVO.setInformation(request.getParameter("roomDes"));
		rtVO.setMaxcapacity(Integer.parseInt(request.getParameter("max")));
		rtVO.setPrice(Integer.parseInt(request.getParameter("price")));
		rtVO.setTypename(request.getParameter("roomTypeName"));
		System.out.println(rtVO);
		BusinessRoomModifyService.getInstance().insertRoomType(rtVO);
		
		return "/BusinessManage/businessmanage_room_type";
	}
	@GetMapping("/BusinessManage/businessRoomType_info.do")
	public String roomTypeInfo(HttpServletRequest request, HttpSession session,Model model) {
		
		RoomTypeInfoDomain rtid=BusinessRoomModifyService.getInstance().searchRoomTypeInfo(request.getParameter("typecode"));
		model.addAttribute("rtid",rtid);
		return "/BusinessManage/businessmanage_room_type_info";
	}
}
