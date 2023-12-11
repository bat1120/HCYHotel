package kr.co.sist.business.hotel;

public class FileListDomain {
   private String fileName;
   private String fileCode;

   public String getFileName() {
      return this.fileName;
   }

   public String getFileCode() {
      return this.fileCode;
   }

   public void setFileName(String fileName) {
      this.fileName = fileName;
   }

   public void setFileCode(String fileCode) {
      this.fileCode = fileCode;
   }

   public String toString() {
      return "FileListDomain(fileName=" + this.getFileName() + ", fileCode=" + this.getFileCode() + ")";
   }

   public FileListDomain(String fileName, String fileCode) {
      this.fileName = fileName;
      this.fileCode = fileCode;
   }

   public FileListDomain() {
   }
}
