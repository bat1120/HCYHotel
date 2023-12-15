package kr.co.sist.business.dining;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class DiningUpdateVO {
	private String hotelcode, diningname, operatingtime, information, description,diningcode;
	private int capacity;
}
