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
private String hotelCode,hotelName,sido,status;
private int monthlyBooking,booking_count;
private double total_rating;
private Date inputdate;
}
