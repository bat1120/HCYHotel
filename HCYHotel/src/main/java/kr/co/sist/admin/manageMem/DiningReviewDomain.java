package kr.co.sist.admin.manageMem;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class DiningReviewDomain {
	private String hotelName, diningName, content;
	private Date inputDate;
	private double rating;
}//class
