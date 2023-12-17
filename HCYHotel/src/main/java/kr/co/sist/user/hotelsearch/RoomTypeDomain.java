package kr.co.sist.user.hotelsearch;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RoomTypeDomain {
	String typecode; 
	String  hotelcode; 
	String typename; 
	int price; 
	int basiccapacity;
	int maxcapacity;
}
