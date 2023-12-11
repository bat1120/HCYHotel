package kr.co.sist.business.diningschedule;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class DiningScheduleListDomain {
	private String category,schedulecode;
	private int price,ppl;
	private double rating;
	private Date scheduledate;
}
