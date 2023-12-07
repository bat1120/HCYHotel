package kr.co.sist.admin.manageMem;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RoomReviewDomain {
	private String hotelName, roomName, content;
	private Date inputDate;
	private double rating;
}//class
