package kr.co.sist.user.notice;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class NoticeDomain {

	private String noticeCode, title, content;
	private Date inputDate;
	private int viewCnt;
	
}//class
