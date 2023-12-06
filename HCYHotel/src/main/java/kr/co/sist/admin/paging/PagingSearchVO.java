package kr.co.sist.admin.paging;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PagingSearchVO {
	private String tableName, key, field;
	private int pageScale, currentPage;
}//class
