package kr.co.sist.admin.manageMem;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemInfoDomain {
	private String id, name, email, tel;
	private int bookingCnt;
	private List<RoomReviewDomain> roomReviewList;
	private List<DiningReviewDomain> diningReviewList;
}//class
