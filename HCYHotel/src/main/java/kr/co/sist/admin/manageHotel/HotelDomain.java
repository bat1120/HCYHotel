package kr.co.sist.admin.manageHotel;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class HotelDomain {
private String hotelName, hotelCode, id;
private double useRatio;
private int reviewCnt;
}//class
