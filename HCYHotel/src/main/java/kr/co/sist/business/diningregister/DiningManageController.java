package kr.co.sist.business.diningregister;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DiningManageController {
   @GetMapping({"/BusinessManage/businessDiningMain.do"})
   public String goBookingManage(HttpSession session, Model model) {
      session.setAttribute("id", "sajang1");
      String id = (String)session.getAttribute("id");
      List<DiningSearchDomain> diningList = DiningManageService.getInstance().searchDining(id);
      List<BusinessDiningDomain> diningResList = DiningManageService.getInstance().searchAllDiningRegister(id);
      model.addAttribute("diningList", diningList);
      model.addAttribute("diningResList", diningResList);
      return "BusinessManage/businessmange_dining_main";
   }
   @ResponseBody
   @RequestMapping(value="/BusinessManage/dining_ajax.do", method={RequestMethod.POST,RequestMethod.GET})
	public String ajaxDining(HttpServletRequest request,Model model,HttpSession session) {
		JSONObject json=new JSONObject();
		DiningRegisterVO drVO=new DiningRegisterVO();
		drVO.setDiningcode(request.getParameter("diningcode"));
		drVO.setId((String)session.getAttribute("id"));
		
		json=new CreateJson().newDining(drVO);
		System.out.println(request.getParameter("diningcode"));
		System.out.println((String)session.getAttribute("id"));
		System.out.println(json.get("data"));
		return json.toJSONString();
	}
}
