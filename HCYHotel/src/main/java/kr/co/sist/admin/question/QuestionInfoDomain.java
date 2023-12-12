package kr.co.sist.admin.question;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class QuestionInfoDomain {
	private String questionCode, id, title, content, answer;
	private Date inputDate, answerDate;
}//class
