package kr.co.sist.business.diningschedule;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Setter
@Getter
@ToString
public class DiningScheduleInfoDomain {
private String schedulecode, diningcode, category;
private int price,pplcnt;
private Date scheduledate;
}
