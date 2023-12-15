package kr.co.sist.user.home;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.encryption.Encryption;
import kr.co.sist.user.login.LoginService;

@Service
public class HomeService {
	private static HomeService hs;
	
	private HomeService() {
	}//constructor
	
	public static HomeService getInstance() {
		if(hs==null) {
			hs=new HomeService();
		}//end if
		return hs;
	}//getInstance
}
