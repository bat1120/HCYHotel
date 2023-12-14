package kr.co.sist.business.room;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RoomTypeVO {
private String hotelcode, typename,amenity, information;
private int price, addprice, basiccapacity, maxcapacity;
}
