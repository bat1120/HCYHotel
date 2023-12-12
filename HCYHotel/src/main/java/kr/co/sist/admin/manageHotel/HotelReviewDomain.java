package kr.co.sist.admin.manageHotel;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class HotelReviewDomain {
private String id, content;
private double rating;
private Date inputDate;
}//class
