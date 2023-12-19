package kr.co.sist.user.home;

import java.sql.Clob;
import java.sql.Date;
import java.util.List;

import kr.co.sist.user.hotelsearch.RoomTypeDomain;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class HotelDomain {
	
	private String hotelcode;
	private String id;
	private String loccode;
	private String hotelname;
	private String hoteladdress	;
	private String longitude;	
	private String latitude;
	private int breackfastprice;
	private int price;
	private String tel;	
	private String hotelrate;	
	private Clob description;	
	private Date inputdate;	
	private String filename;
	private List<RoomTypeDomain> roomtypes;
}
