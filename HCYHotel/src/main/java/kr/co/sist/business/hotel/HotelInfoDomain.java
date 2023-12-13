package kr.co.sist.business.hotel;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class HotelInfoDomain {
   private String hotelName;
   private String hotelAddress;
   private String hotelRate;
   private String description;
   private String tel;
   private int breackfastprice;
   private List<FileListDomain> fileList;

   
}
