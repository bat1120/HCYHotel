package kr.co.sist.business.diningschedule;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class DiningScheduleVO {
private String diningcode,category,schedulecode;
private int pplcnt,price;
private Date scheduledate;
}
