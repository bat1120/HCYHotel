package kr.co.sist.admin.dashboard;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class DashboardDomain {

	private int weeklyVisitor,weeklyBusVisitor
	,weeklyMemVisitor,dailyVisitor
	,newHotel,newDining,newReview;
	
}//class
