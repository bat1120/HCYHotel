package kr.co.sist.business.room;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class RoomTypeDomain {
private String typename,typecode;
private int price,basiccapacity, maxcapacity;
}
