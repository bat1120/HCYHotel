package kr.co.sist.business.diningregister;

import java.text.SimpleDateFormat;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import kr.co.sist.business.manage.BusinessHotelDomain;

public class CreateJson {

	public JSONObject newDining(DiningRegisterVO drVO) {
		JSONObject jsonObj=new JSONObject();
		JSONArray jsonArr=new JSONArray();
		List<DiningDomain> list= DiningManageDAO.getInstace().selectDiningList(drVO);
		JSONObject json = null;
		for (DiningDomain bdd : list) {
			json = new JSONObject();
			json.put("bookingcode",bdd.getBookingcode());
			
			json.put("bookingdate",bdd.getBookingdate());
			
			json.put("bookingname",bdd.getBookingname());
			json.put("category",bdd.getCategory());
			json.put("id",bdd.getId());
			json.put("pplcnt",bdd.getPplcnt());
			json.put("status",bdd.getStatus());

			jsonArr.add(json);
		}
		jsonObj.put("data", jsonArr);
		jsonObj.put("dataLength", jsonArr.size());
		return jsonObj;
	}
}
