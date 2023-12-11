package kr.co.sist.admin.notice;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeInfoDomain {
private String noticeCode, title, content;
private int viewCnt;
private Date inputDate;
}//class
