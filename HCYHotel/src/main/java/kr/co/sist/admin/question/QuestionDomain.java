package kr.co.sist.admin.question;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class QuestionDomain {
	private String title,questionCode, id, answer;
	private boolean answerFlag;
	private Date inputDate;
}//class
