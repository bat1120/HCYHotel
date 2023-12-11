package kr.co.sist.admin.paging;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
@Component
public class PagingService {
	@Autowired
	private PagingDAO pDAO;
	
	public PagingDomain getPDomain(PagingSearchVO psVO) {
		PagingDomain pd = new PagingDomain();
		int totalCnt = pDAO.selectTotalCnt(psVO);
		pd.setTotalPage(totalCnt/psVO.getPageScale()+1);
		pd.setStartNum(psVO.getPageScale()*(psVO.getCurrentPage()-1)+1);
		int endNum = pd.getStartNum()+psVO.getPageScale()-1;
		if(endNum<totalCnt){
		pd.setEndNum(endNum);
		}else {
			pd.setEndNum(totalCnt);
		}//else
		
		return pd; 
	}//getPVO
}//class
