package kr.co.sist.user.mypage.mydiningreview;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MyDiningReviewService {

	@Autowired
	private MyDiningReviewDAO mdrDAO;
	
	public List<ReviewDomain> searchDiningReview( /*인가설마?*/){
		List<ReviewDomain> list=mdrDAO.selectDiningReview();
		
		return list; 
	}//searchDiningReview
	
}//class
