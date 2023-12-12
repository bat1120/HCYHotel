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
   
   public HotelInfoDomain selectHotelInfo(String hotelcode){
	   HotelInfoDomain hid=new HotelInfoDomain();
	   MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
	   SqlSession ss=mbh.getMyBatisHandler(false);
	   System.out.println(hotelcode);
	   hid=ss.selectOne("kr.co.sist.business.hotelModifyMapper.hotelInfo",hotelcode);
	   mbh.closeHandler(ss);
	   
	   return hid;
   }

   public List<FileListDomain> selectFileList(String hotelcode){
	   List<FileListDomain> list=new ArrayList<FileListDomain>();
	   
	   MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
	   SqlSession ss=mbh.getMyBatisHandler(false);
	   System.out.println(hotelcode);
	   list=ss.selectList("kr.co.sist.business.hotelModifyMapper.fileList",hotelcode);
	   System.out.println(list);
	   mbh.closeHandler(ss);
	   
	   return list;
   }
   
}
