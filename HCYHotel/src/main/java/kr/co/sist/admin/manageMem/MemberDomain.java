package kr.co.sist.admin.manageMem;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberDomain {
	private String id,name,email;
	private int bookingCnt;
}//class
