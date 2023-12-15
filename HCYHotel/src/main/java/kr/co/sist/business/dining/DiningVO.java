package kr.co.sist.business.dining;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class DiningVO {
private String hotelcode, diningname, operatingtime, information, description;
private int capacity;
}
