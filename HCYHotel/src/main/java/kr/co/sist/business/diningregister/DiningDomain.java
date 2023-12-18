package kr.co.sist.business.diningregister;

import java.sql.Date;

public class DiningDomain {
	 private String bookingcode;
	   private String id;
	   private String bookingname;
	   private String category;
	   private String status;
	   private int pplcnt;
	   private String bookingdate;

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

	   public String getBookingdate() {
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

	   public void setBookingdate(String bookingdate) {
	      this.bookingdate = bookingdate;
	   }

	   public String toString() {
	      return "BusinessDiningDomain(bookingcode=" + this.getBookingcode() + ", id=" + this.getId() + ", bookingname=" + this.getBookingname() + ", category=" + this.getCategory() + ", status=" + this.getStatus() + ", pplcnt=" + this.getPplcnt() + ", bookingdate=" + this.getBookingdate() + ")";
	   }

	   
}
