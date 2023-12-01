package kr.co.sist.business.manage;

import java.sql.Date;

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
public class BusinessHotelDomain {
	private String roomcode,id,bookingname;
	private int pplCnt;
	private Date checkin,checkout;
}
