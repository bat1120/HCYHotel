package kr.co.sist.business.diningregister;

import java.sql.Date;

public class BusinessDiningDomain {
   private String bookingcode;
   private String id;
   private String bookingname;
   private String category;
   private String status;
   private int pplcnt;
   private Date bookingdate;

   public String getBookingcode() {
      return this.bookingcode;
   }

   public String getId() {
      return this.id;
   }

   public String getBookingname() {
      return this.bookingname;
   }

   public String getCategory() {
      return this.category;
   }

   public String getStatus() {
      return this.status;
   }

   public int getPplcnt() {
      return this.pplcnt;
   }

   public Date getBookingdate() {
      return this.bookingdate;
   }

   public void setBookingcode(String bookingcode) {
      this.bookingcode = bookingcode;
   }

   public void setId(String id) {
      this.id = id;
   }

   public void setBookingname(String bookingname) {
      this.bookingname = bookingname;
   }

   public void setCategory(String category) {
      this.category = category;
   }

   public void setStatus(String status) {
      this.status = status;
   }

   public void setPplcnt(int pplcnt) {
      this.pplcnt = pplcnt;
   }

   public void setBookingdate(Date bookingdate) {
      this.bookingdate = bookingdate;
   }

   public String toString() {
      return "BusinessDiningDomain(bookingcode=" + this.getBookingcode() + ", id=" + this.getId() + ", bookingname=" + this.getBookingname() + ", category=" + this.getCategory() + ", status=" + this.getStatus() + ", pplcnt=" + this.getPplcnt() + ", bookingdate=" + this.getBookingdate() + ")";
   }

   public BusinessDiningDomain(String bookingcode, String id, String bookingname, String category, String status, int pplcnt, Date bookingdate) {
      this.bookingcode = bookingcode;
      this.id = id;
      this.bookingname = bookingname;
      this.category = category;
      this.status = status;
      this.pplcnt = pplcnt;
      this.bookingdate = bookingdate;
   }

   public BusinessDiningDomain() {
   }
}
