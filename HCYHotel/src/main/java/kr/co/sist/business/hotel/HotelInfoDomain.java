package kr.co.sist.business.hotel;

import java.util.List;

public class HotelInfoDomain {
   private String hotelName;
   private String hotelAddress;
   private String hotelRate;
   private String description;
   private List<FileListDomain> fileList;

   public String getHotelName() {
      return this.hotelName;
   }

   public String getHotelAddr() {
      return this.hotelAddress;
   }

   public String getHotelRate() {
      return this.hotelRate;
   }

   public String getDescription() {
      return this.description;
   }

   public List<FileListDomain> getFileList() {
      return this.fileList;
   }

   public void setHotelName(String hotelName) {
      this.hotelName = hotelName;
   }

   public void setHotelAddr(String hotelAddress) {
      this.hotelAddress = hotelAddress;
   }

   public void setHotelRate(String hotelRate) {
      this.hotelRate = hotelRate;
   }

   public void setDescription(String description) {
      this.description = description;
   }

   public void setFileList(List<FileListDomain> fileList) {
      this.fileList = fileList;
   }

   public String toString() {
      return "HotelInfoDomain(hotelName=" + this.getHotelName() + ", hotelAddr=" + this.getHotelAddr() + ", hotelRate=" + this.getHotelRate() + ", description=" + this.getDescription() + ", fileList=" + this.getFileList() + ")";
   }

   public HotelInfoDomain(String hotelName, String hotelAddress, String hotelRate, String description, List<FileListDomain> fileList) {
      this.hotelName = hotelName;
      this.hotelAddress = hotelAddress;
      this.hotelRate = hotelRate;
      this.description = description;
      this.fileList = fileList;
   }

   public HotelInfoDomain() {
   }
}
