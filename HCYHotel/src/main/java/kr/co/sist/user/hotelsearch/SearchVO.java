package kr.co.sist.user.hotelsearch;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class SearchVO {
	String searchAddress;
	Integer searchCapacity;
	String searchCheckin;
	String searchCheckout;
	String hotelcode;
}
