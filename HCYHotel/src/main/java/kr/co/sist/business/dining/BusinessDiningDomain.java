package kr.co.sist.business.dining;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BusinessDiningDomain {
	private String hotel,dining,hotelcode,diningcode;
	private double rating_avg;
	private int ppl;
}
