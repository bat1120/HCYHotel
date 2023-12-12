package kr.co.sist.admin.manageDining;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class DiningReviewDomain {
	private String content;
	private Date inputDate;
	private double rating;
}//class
