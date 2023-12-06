package kr.co.sist.admin.paging;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PagingDomain {
	private int totalPage, startNum, endNum;
}//class
