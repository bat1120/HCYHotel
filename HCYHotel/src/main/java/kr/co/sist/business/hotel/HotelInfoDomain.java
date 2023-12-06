package kr.co.sist.business.hotel;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class HotelInfoDomain {
private String hotelName,hotelAddr,hotelRate,description;
private List<FileListDomain> fileList;
}
