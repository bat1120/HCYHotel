package kr.co.sist.admin.manageDining;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@ToString
public class DiningInfoDomain {
private String hotelName, diningName, operatingTime, information, description;
private int capacity;
private List<String> fileList;
}//class
