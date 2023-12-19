package kr.co.sist.business.diningregister;

import java.util.List;

public class DiningManageService {
   private static DiningManageService dms;

   private DiningManageService() {
   }

   public static DiningManageService getInstance() {
      if (dms == null) {
         dms = new DiningManageService();
      }

      return dms;
   }

   public List<DiningSearchDomain> searchDining(String id) {
      List<DiningSearchDomain> list = DiningManageDAO.getInstace().selectDining(id);
      return list;
   }

   public List<BusinessDiningDomain> searchAllDiningRegister(String id) {
      List<BusinessDiningDomain> list = DiningManageDAO.getInstace().selecAllDining(id);
      return list;
   }
   public void deleteBooking(String bookingcode) {
	   DiningManageDAO.getInstace().deleteBooking(bookingcode);
   }
}
