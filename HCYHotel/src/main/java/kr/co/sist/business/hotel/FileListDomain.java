package kr.co.sist.business.hotel;

public class FileListDomain {
   private String filename;
   private String filecode;

   public String getFilename() {
      return this.filename;
   }

   public String getFilecode() {
      return this.filecode;
   }

   public void setFilename(String filename) {
      this.filename = filename;
   }

   public void setFilecode(String filecode) {
      this.filecode = filecode;
   }

   public String toString() {
      return "FileListDomain(filename=" + this.getFilename() + ", filecode=" + this.getFilecode() + ")";
   }

   public FileListDomain(String filename, String filecode) {
      this.filename = filename;
      this.filecode = filecode;
   }

   public FileListDomain() {
   }
}
