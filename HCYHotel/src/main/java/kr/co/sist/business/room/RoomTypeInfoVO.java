package kr.co.sist.business.room;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RoomTypeInfoVO {
private String typename,amenity, information,typecode;
private int price, addprice, basiccapacity, maxcapacity;
}
