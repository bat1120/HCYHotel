package kr.co.sist.admin.manageMem;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemDtailPagingVO {
	private String id,memFlag,reviewFlag;
	private int startNum, endNum;
}//class
