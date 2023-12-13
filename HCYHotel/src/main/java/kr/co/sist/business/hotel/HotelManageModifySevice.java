package kr.co.sist.business.hotel;

import java.util.ArrayList;
import java.util.List;


public class HotelManageModifySevice {
   private static HotelManageModifySevice hmms;

   private HotelManageModifySevice() {
   }

   public static HotelManageModifySevice getInstance() {
      if (hmms == null) {
         hmms = new HotelManageModifySevice();
      }

      return hmms;
   }

   public List<HotelListDomain> loadHotelList(String id) {
      new ArrayList();
      HotelManageModifyDAO hmmDAO = HotelManageModifyDAO.getInstance();
      List<HotelListDomain> list = hmmDAO.selectHotelList(id);
      return list;
   }
   
   public HotelInfoDomain loadHotelInfo(String hotelcode) {
	   HotelInfoDomain hid=new HotelInfoDomain();
	   
	   hid=HotelManageModifyDAO.getInstance().selectHotelInfo(hotelcode);
	   System.out.println(hid);
	   return hid;
   }
   public List<FileListDomain> loadFileList(String id) {
	      HotelManageModifyDAO hmmDAO = HotelManageModifyDAO.getInstance();
	      List<FileListDomain> list = hmmDAO.selectFileList(id);
	      return list;
	   }
   public String searchHotelcode() {
	   HotelManageModifyDAO hmmDAO = HotelManageModifyDAO.getInstance();
	   String hotelcode=hmmDAO.selectHotelCode();
	   return hotelcode;
   }
   public void deleteHotel(String hotelcode) {
	   HotelManageModifyDAO hmmDAO = HotelManageModifyDAO.getInstance();
	   hmmDAO.deleteHotel(hotelcode);
   }
   
   public String searchLoccode(LocVO lVO) {
	   HotelManageModifyDAO hmmDAO = HotelManageModifyDAO.getInstance();
	   String loccode=hmmDAO.selectLoccode(lVO);
	   return loccode;
   }
   public void insertFile(FileVO fVO) {
	   HotelManageModifyDAO hmmDAO = HotelManageModifyDAO.getInstance();
	   hmmDAO.insertFile(fVO);
   }
   public String searchFilecode() {
	   HotelManageModifyDAO hmmDAO = HotelManageModifyDAO.getInstance();
	   String filecode=hmmDAO.selectFilecode();
	   return filecode;
   }
   public void insertHotel(HotelVO hVO) {
	   HotelManageModifyDAO hmmDAO = HotelManageModifyDAO.getInstance();
	   hmmDAO.insertHotel(hVO);
	  
   }
}
