package kr.co.sist.user.qna;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
@Setter
@Getter
public class QnADomain {
	
	private String questionCode, title, content, id, answer;
	private Date inputDate, answerDate;
	
}//class
