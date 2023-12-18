package kr.co.sist.user.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.encryption.Encryption;
import kr.co.sist.user.login.LoginService;

@Service
public class HomeService {
	private static HomeService hs;
	
	public HomeService() {
		
	}
	
	public static HomeService getInstance() {
		if(hs==null) {
			hs=new HomeService();
		}//end if
		return hs;
	}//getInstance

	public List<HotelDomain> getRecommendedHotels() {
		
		HomeDAO hDAO= HomeDAO.getInstance();
		
		return hDAO.getRecommendedHotels();
	}//getRecommendedHotels
	
	public List<HotelDomain> getRisingHotels() {
		
		HomeDAO hDAO= HomeDAO.getInstance();
		
		return hDAO.getRisingHotels();
	}//getRisingHotels
	
	public List<HotelDomain> getHotHotels() {
		
		HomeDAO hDAO= HomeDAO.getInstance();
		
		return hDAO.getHotHotels();
	}//getHotHotels
}
