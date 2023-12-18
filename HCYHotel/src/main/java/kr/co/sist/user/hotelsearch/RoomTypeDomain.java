package kr.co.sist.user.hotelsearch;

import java.sql.Clob;
import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RoomTypeDomain {
	private String typecode;
	private String typename;
	private String longitude;
	private String latitude;
	private Date inputdate;
	private String  hotelcode; 
	private String  hotelname; 
	private String  hoteladdress; 
	private String amenity;
	private String information;
	private int price; 
	private int addprice; 
	private int basiccapacity;
	private int maxcapacity;
	private int breakfastprice;
	private String tel;
	private String hotelrate;
	private Clob description;
	private String filename;
	
}
