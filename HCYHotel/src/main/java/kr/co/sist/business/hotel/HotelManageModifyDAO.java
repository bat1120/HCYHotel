package kr.co.sist.business.hotel;

import java.util.ArrayList;
import java.util.List;
import kr.co.sist.business.dao.MyBatiseHandlerBusiness;
import org.apache.ibatis.session.SqlSession;

public class HotelManageModifyDAO {
   private static HotelManageModifyDAO hmmDAO;

   private HotelManageModifyDAO() {
   }

   public static HotelManageModifyDAO getInstance() {
      if (hmmDAO == null) {
         hmmDAO = new HotelManageModifyDAO();
      }

      return hmmDAO;
   }

   public List<HotelListDomain> selectHotelList(String id) {
      new ArrayList();
      MyBatiseHandlerBusiness mbh = MyBatiseHandlerBusiness.getInstance();
      SqlSession ss = mbh.getMyBatisHandler(false);
      List<HotelListDomain> list = ss.selectList("kr.co.sist.business.hotelModifyMapper.searchhotelInfo", id);
      mbh.closeHandler(ss);
      return list;
   }
}
