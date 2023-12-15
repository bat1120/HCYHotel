package kr.co.sist.business.dining;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class DiningDomain {
private String diningname,diningcode,hotelcode,operatingtime, information, description;
private int  capacity;
}
