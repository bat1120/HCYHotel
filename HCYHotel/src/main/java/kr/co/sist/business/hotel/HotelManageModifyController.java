package kr.co.sist.business.hotel;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HotelManageModifyController {
   @GetMapping({"/BusinessManage/businessHotel.do"})
   public String goManageHotel(HttpSession session, Model model) {
      session.setAttribute("id", "sajang1");
      String id = (String)session.getAttribute("id");
      HotelManageModifySevice hmms = HotelManageModifySevice.getInstance();
      model.addAttribute("hotelList", hmms.loadHotelList(id));
      return "BusinessManage/businessmanage_hotel";
   }

   @GetMapping({"/BusinessManage/businessHotelGoModify.do"})
   public String goHotelModify(Model model, HttpServletRequest request,HttpSession session) {
	   request.getParameter("hotelcode");
	   HotelInfoDomain hid=new HotelInfoDomain();
	   hid=HotelManageModifySevice.getInstance().loadHotelInfo(request.getParameter("hotelcode"));
	   List<FileListDomain> list=HotelManageModifySevice.getInstance().loadFileList(request.getParameter("hotelcode"));
	   model.addAttribute("hotelname",hid.getHotelName());
	   model.addAttribute("hoteladdr",hid.getHotelAddr());
	   model.addAttribute("hoteldes",hid.getDescription());
	   model.addAttribute("hotelrate",hid.getHotelRate());
	   model.addAttribute("filelist",list);
	   
      return "BusinessManage/businessmanage_hotel_info";
   }

   @GetMapping({"/BusinessManage/businessHotelModify_update.do"})
   public String hotelModify(HotelVO hVO, HttpServletRequest request) {
     System.out.println(request.getParameter("longitude")); 
     System.out.println(request.getParameter("disabledTextInput")); 
      return "BusinessManage/businessmanage_hotel_info";
   }

   @GetMapping({"/BusinessManage/businessHotelDelete.do"})
   public String hotelErase(String hotelCode) {
      return "";
   }
}
