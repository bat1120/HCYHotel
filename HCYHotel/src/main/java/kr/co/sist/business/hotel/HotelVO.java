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
private String hotelname,hoteladdress,description,loccode,id,longitude,latitude,tel;
private int hotelrate, breackfastprice;
}
