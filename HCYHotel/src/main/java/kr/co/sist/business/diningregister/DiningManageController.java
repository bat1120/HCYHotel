package kr.co.sist.business.diningregister;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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
}
