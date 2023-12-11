package kr.co.sist.user.dininginfo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class DiningDomain {
	private String hotelName,diningName,operationTime,information,description;
	private int capacity;
}//class
