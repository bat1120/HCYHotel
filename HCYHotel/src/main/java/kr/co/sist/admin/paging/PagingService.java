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
		pd.setTotalPage(totalCnt/psVO.getPageScale());
		pd.setStartNum(psVO.getPageScale()*(psVO.getCurrentPage()-1)+1);
		pd.setEndNum(pd.getStartNum()+psVO.getPageScale()-1);
		
		return pd; 
	}//getPVO
}//class
