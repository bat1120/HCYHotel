package kr.co.sist.business.hotel;

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
public class HotelVO {
private String hotelCode,hotelName,hotelAddress,description;
private String[] fileName,fileCode;
private int hotelRate;
}
