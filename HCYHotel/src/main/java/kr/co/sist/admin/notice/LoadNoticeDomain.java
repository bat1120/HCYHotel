package kr.co.sist.admin.notice;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LoadNoticeDomain {
private String noticeCode, title;
private int viewCnt;
private Date inputDate;
}//class
