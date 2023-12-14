package kr.co.sist.user.mypage.mydiningreview;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
@Setter
@Getter
public class ReviewDomain {

	private String reviewCode, content, hotelName, diningName;
	private double rating;
	private Date inputDate, scheduleDate;
	
}//class
