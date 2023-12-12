package kr.co.sist.admin.manageHotel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import oracle.jdbc.proxy.annotation.Post;

@Controller
public class AdminManageHotelController {
@Autowired
private AdminManageHotelService amhs;

@RequestMapping(value="/admin/goManageHotel.do",method = {RequestMethod.POST,RequestMethod.GET})
public String goManageHotel(Model model) {
	List<HotelDomain> list = amhs.loadHotelList();
	model.addAttribute("hotelList",list);
	return "admin/manageHotel/manageHotel";
}//goManageHotel

@PostMapping("/admin/hotelDetail.do")
public String goHotelDetail(String hotelCode, Model model) {
	model.addAttribute("hotelDetail",amhs.loadHotelDetail(hotelCode));
	model.addAttribute("reviewList",amhs.loadHotelReview(hotelCode));
	model.addAttribute("files",amhs.loadHotelFiles(hotelCode));
	return "admin/manageHotel/hotelDetail";
}//goHotelDetail

@PostMapping("/admin/removeHotel.do")
public String eraseHotel(Model model, String hotelCode) {
	amhs.expungeHotel(hotelCode);
	model.addAttribute("msg","호텔을 삭제했습니다.");
	model.addAttribute("url","goManageHotel.do");
	return "forward:msg.do";
}//eraseHotel
}//class
