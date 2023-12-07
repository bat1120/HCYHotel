package kr.co.sist.business.hotel;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class HotelListDomain {
private String hotelCode,hotelName,sido;
private int monthlyBooking;
private double hotelRate;
private Date date;
}
