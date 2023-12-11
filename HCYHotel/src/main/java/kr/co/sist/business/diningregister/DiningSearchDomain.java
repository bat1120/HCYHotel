package kr.co.sist.business.diningregister;

public class DiningSearchDomain {
   private String diningname;
   private String diningcode;

   public String getDiningname() {
      return this.diningname;
   }

   public String getDiningcode() {
      return this.diningcode;
   }

   public void setDiningname(String diningname) {
      this.diningname = diningname;
   }

   public void setDiningcode(String diningcode) {
      this.diningcode = diningcode;
   }

   public String toString() {
      return "DiningSearchDomain(diningname=" + this.getDiningname() + ", diningcode=" + this.getDiningcode() + ")";
   }
}
