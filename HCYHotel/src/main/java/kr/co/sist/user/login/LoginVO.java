package kr.co.sist.user.login;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LoginVO {

	private String id;
	private String id_save;
	private String password;
	private String memberFlag;
}
