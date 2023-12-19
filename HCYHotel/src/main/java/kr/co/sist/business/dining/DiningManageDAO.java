package kr.co.sist.business.dining;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.business.dao.MyBatiseHandlerBusiness;

public class DiningManageDAO {
	private static DiningManageDAO dmDAO;
	
	private DiningManageDAO() {
		
	}
	
	public static DiningManageDAO getInstance() {
		if(dmDAO==null) {
			dmDAO=new DiningManageDAO();
		}
		return dmDAO;
	}
	
	public List<BusinessDiningDomain> selectDining(String id){
		List<BusinessDiningDomain> list=new ArrayList<BusinessDiningDomain>();
		
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.business.diningModifyMapper.selectDining",id);
		mbh.closeHandler(ss);
		
		return list;
	}
	public List<BusinessHotelDomain> selectHotel(String id){
		List<BusinessHotelDomain> list=new ArrayList<BusinessHotelDomain>();
		
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.business.diningModifyMapper.selectHotel",id);
		mbh.closeHandler(ss);
		
		return list;
	}
	public void insertDining(DiningVO dVO) {

		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		ss.selectOne("kr.co.sist.business.diningModifyMapper.insertDining",dVO);
		mbh.closeHandler(ss);
	}
	public String selectDiningCode() {
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		String diningcode=ss.selectOne("kr.co.sist.business.diningModifyMapper.searchDiningcode");
		mbh.closeHandler(ss);
		return diningcode;
	}
	public void insertFile(FileVO fVO) {
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		ss.selectOne("kr.co.sist.business.diningModifyMapper.insertFile",fVO);
		mbh.closeHandler(ss);
		
	}
	public DiningDomain selectDiningInfo(String diningcode) {
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		DiningDomain dd=ss.selectOne("kr.co.sist.business.diningModifyMapper.selectDiningInfo",diningcode);
		mbh.closeHandler(ss);
		return dd;
	}
	public List<FileDomain> selectFilename(String diningcode){
		List<FileDomain> list=new ArrayList<FileDomain>();
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.business.diningModifyMapper.selectFilename",diningcode);
		mbh.closeHandler(ss);
		return list;
	}
	public void updateDining(DiningUpdateVO duVO) {
		MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		ss.selectOne("kr.co.sist.business.diningModifyMapper.updateDining",duVO);
		mbh.closeHandler(ss);
	}
	 public void deleteDining(String diningcode) {
		   MyBatiseHandlerBusiness mbh=MyBatiseHandlerBusiness.getInstance();
		   SqlSession ss=mbh.getMyBatisHandler(true);
		   ss.delete("kr.co.sist.business.diningModifyMapper.deletedining",diningcode);
		   mbh.closeHandler(ss);
	   }
}
