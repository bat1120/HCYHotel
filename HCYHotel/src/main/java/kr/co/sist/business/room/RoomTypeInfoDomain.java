package kr.co.sist.business.room;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class RoomTypeInfoDomain {
	private String typename, amenity, information,typecode;
	private int price, addprice, basiccapacity, maxcapacity;
}
