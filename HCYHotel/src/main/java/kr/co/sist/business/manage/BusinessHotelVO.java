package kr.co.sist.business.manage;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class BusinessHotelVO {
private String hotelCode,hotelName;
private Date inputDate;
}
