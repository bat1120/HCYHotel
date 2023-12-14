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
	// ��� ��õ�� ������ ������ ��õ�� �������ϳ� : ������Ŭ
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
		if ("���Ǽ���".equals(hotelcode)) {
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
	@PostMapping("/BusinessManage/businessRoomType_update.do")
	public String roomTypeUpdate(HttpServletRequest request, HttpSession session) {
		RoomTypeInfoVO rtiVO=new RoomTypeInfoVO();
		rtiVO.setAddprice(Integer.parseInt(request.getParameter("addPrice")));
		rtiVO.setAmenity(request.getParameter("amenity"));
		rtiVO.setBasiccapacity(Integer.parseInt(request.getParameter("basic")));
		rtiVO.setInformation(request.getParameter("roomDes"));
		rtiVO.setPrice(Integer.parseInt(request.getParameter("price")));
		rtiVO.setMaxcapacity(Integer.parseInt(request.getParameter("max")));
		rtiVO.setTypecode(request.getParameter("typecode"));
		rtiVO.setTypename(request.getParameter("roomTypeName"));
		System.out.println(rtiVO);
		BusinessRoomModifyService.getInstance().updateRoomTypeInfo(rtiVO);
		
		
		return "/BusinessManage/businessmanage_hotel";
	}
	public String deleteRoomType() {
		return "";
	}
	
	@GetMapping("/BusinessManage/businessRomm_modify.do")
	public String goRoomModify(HttpSession session,Model model) {
		List<HotelListDomain> list=BusinessRoomModifyService.getInstance().loadAllHotelList((String)session.getAttribute("id"));
		model.addAttribute("hotellist",list);
		
		return "/BusinessManage/businessmanage_room_modify_empty";
	}
	@ResponseBody
	@GetMapping("/BusinessManage/room_ajax.do")
	public String roomModifyAjax(HttpSession session,HttpServletRequest request,Model model) {
		JSONObject json=new JSONObject();
		String typecode = request.getParameter("typecode");
		session.setAttribute("hotelcode", typecode);
		System.out.println(typecode);
		CreateJson cj = new CreateJson();
		if (!("ȣ�ڼ���".equals(typecode))) {
			json =cj.roomType(typecode);
		} 
		return json.toJSONString();
	}
	@ResponseBody
	@GetMapping("/BusinessManage/second_ajax_call.do")
	public String roomTypeInfoAjax(HttpSession session,HttpServletRequest request,Model model){
		JSONObject json=new JSONObject();
		String typecode = request.getParameter("typecode");
		session.setAttribute("typecode", typecode);
		System.out.println(typecode);
		CreateJson cj = new CreateJson();
		if (!("Ÿ�Լ���".equals(typecode))) { 
			json =cj.roomTypeInfo(typecode);
		}
		System.out.println("--------------------"+ json.toJSONString());
		return json.toJSONString();
	
//	return "";
	}
	@PostMapping("/BusinessManage/businessRoom_insert.do")
	public String insertRoom(HttpSession session,HttpServletRequest request,Model model) {
		RoomVO rVO=new RoomVO();
		rVO.setHotelcode((String)session.getAttribute("hotelcode"));
		rVO.setTypecode((String)session.getAttribute("typecode"));
		rVO.setServicecode(request.getParameter("service"));
		rVO.setRoomname(request.getParameter("roomname"));
		BusinessRoomModifyService.getInstance().insertRoom(rVO);
		session.removeAttribute("hotelcode");
		session.removeAttribute("typecode");
		return "/BusinessManage/businessmanage_room";
	}
	@GetMapping("/BusinessManage/businessRoom_modify.do")
	public String goRoomModify(HttpSession session,HttpServletRequest request,Model model) {
		System.out.println(request.getParameter("roomcode"));
		RoomInfoDomain rid=BusinessRoomModifyService.getInstance().searchRoom(request.getParameter("roomcode"));
		List<ServiceDomain> list=BusinessRoomModifyDAO.getInstance().selectService();
		System.out.println(rid);
		System.out.println(list);
		model.addAttribute("roominfo",rid);
		model.addAttribute("servicelist",list);
		
		
		return "/BusinessManage/businessmanage_room_modify";
	}
	@PostMapping("/BusinessManage/businessroom_update.do")
	public String updateRoom(HttpSession session,HttpServletRequest request,Model model){
		RoomUpdateVO ruVO=new RoomUpdateVO();
		ruVO.setRoomcode(request.getParameter("roomcode"));
		ruVO.setRoomname(request.getParameter("roomname"));
		ruVO.setServicecode(request.getParameter("selectService"));
		BusinessRoomModifyDAO.getInstance().updateRoom(ruVO);
		
		return "/BusinessManage/businessmanage_room";
	}
	
}
