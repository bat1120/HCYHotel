package kr.co.sist.business.room;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class RoomListDomain {
	private String roomcode,roomname,typename;
	private double average_rating;
	private int price,reservation_count;
	
}
