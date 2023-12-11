package kr.co.sist.business.hotel;

import java.sql.Date;

public class HotelListDomain {
   private String hotelCode;
   private String hotelName;
   private String sido;
   private String status;
   private int monthlyBooking;
   private int booking_count;
   private double total_rating;
   private Date inputdate;

   public String getHotelCode() {
      return this.hotelCode;
   }

   public String getHotelName() {
      return this.hotelName;
   }

   public String getSido() {
      return this.sido;
   }

   public String getStatus() {
      return this.status;
   }

   public int getMonthlyBooking() {
      return this.monthlyBooking;
   }

   public int getBooking_count() {
      return this.booking_count;
   }

   public double getTotal_rating() {
      return this.total_rating;
   }

   public Date getInputdate() {
      return this.inputdate;
   }

   public void setHotelCode(String hotelCode) {
      this.hotelCode = hotelCode;
   }

   public void setHotelName(String hotelName) {
      this.hotelName = hotelName;
   }

   public void setSido(String sido) {
      this.sido = sido;
   }

   public void setStatus(String status) {
      this.status = status;
   }

   public void setMonthlyBooking(int monthlyBooking) {
      this.monthlyBooking = monthlyBooking;
   }

   public void setBooking_count(int booking_count) {
      this.booking_count = booking_count;
   }

   public void setTotal_rating(double total_rating) {
      this.total_rating = total_rating;
   }

   public void setInputdate(Date inputdate) {
      this.inputdate = inputdate;
   }

   public String toString() {
      return "HotelListDomain(hotelCode=" + this.getHotelCode() + ", hotelName=" + this.getHotelName() + ", sido=" + this.getSido() + ", status=" + this.getStatus() + ", monthlyBooking=" + this.getMonthlyBooking() + ", booking_count=" + this.getBooking_count() + ", total_rating=" + this.getTotal_rating() + ", inputdate=" + this.getInputdate() + ")";
   }

   public HotelListDomain(String hotelCode, String hotelName, String sido, String status, int monthlyBooking, int booking_count, double total_rating, Date inputdate) {
      this.hotelCode = hotelCode;
      this.hotelName = hotelName;
      this.sido = sido;
      this.status = status;
      this.monthlyBooking = monthlyBooking;
      this.booking_count = booking_count;
      this.total_rating = total_rating;
      this.inputdate = inputdate;
   }

   public HotelListDomain() {
   }
}
