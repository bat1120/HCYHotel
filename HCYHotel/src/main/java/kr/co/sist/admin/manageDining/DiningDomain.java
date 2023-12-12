package kr.co.sist.admin.manageDining;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class DiningDomain {
private String diningCode, hotelName, diningName;
private int reviewCnt;
private double useRatio;
}//class
