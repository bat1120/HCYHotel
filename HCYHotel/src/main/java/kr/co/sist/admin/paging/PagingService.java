package kr.co.sist.admin.paging;

public class PagingService {
	private static PagingService p;
	private PagingService() {
	}//PagingService
	
	public static PagingService getInstance() {
		if(p==null) {p=new PagingService();}
		return p;
	}//getInstance
	
	public PagingDomain getPDomain(PagingSearchVO psVO) {
		PagingDomain pd = new PagingDomain();
		PagingDAO pDAO = PagingDAO.getInstance();
		int totalCnt = pDAO.selectTotalCnt(psVO);
		pd.setTotalPage(totalCnt/psVO.getPageScale());
		pd.setStartNum(psVO.getPageScale()*(psVO.getCurrentPage()-1)+1);
		pd.setEndNum(pd.getStartNum()+psVO.getPageScale()-1);
		
		return pd; 
	}//getPVO
}//class
