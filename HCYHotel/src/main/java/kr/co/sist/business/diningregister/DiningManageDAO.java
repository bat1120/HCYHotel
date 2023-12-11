package kr.co.sist.business.diningregister;

import java.util.ArrayList;
import java.util.List;
import kr.co.sist.business.dao.MyBatiseHandlerBusiness;
import org.apache.ibatis.session.SqlSession;

public class DiningManageDAO {
   private static DiningManageDAO dmd;

   private DiningManageDAO() {
   }

   public static DiningManageDAO getInstace() {
      if (dmd == null) {
         dmd = new DiningManageDAO();
      }

      return dmd;
   }

   public List<DiningSearchDomain> selectDining(String id) {
      new ArrayList();
      MyBatiseHandlerBusiness mbh = MyBatiseHandlerBusiness.getInstance();
      SqlSession ss = mbh.getMyBatisHandler(false);
      List<DiningSearchDomain> list = ss.selectList("kr.co.sist.business.diningReservationMapper.selectDining", id);
      mbh.closeHandler(ss);
      return list;
   }

   public List<BusinessDiningDomain> selecAllDining(String id) {
      new ArrayList();
      MyBatiseHandlerBusiness mbh = MyBatiseHandlerBusiness.getInstance();
      SqlSession ss = mbh.getMyBatisHandler(false);
      List<BusinessDiningDomain> list = ss.selectList("kr.co.sist.business.diningReservationMapper.selectAllDiningRegister", id);
      mbh.closeHandler(ss);
      return list;
   }
}
