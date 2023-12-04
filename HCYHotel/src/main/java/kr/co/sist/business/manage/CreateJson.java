package kr.co.sist.business.manage;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class CreateJson {
 public JSONObject createJson(HttpSession session,String date) {
	 JSONObject jsonObj=new JSONObject();
	 JSONArray jsonArr=new JSONArray();
	 
	 List<BusinessHotelDomain> list=HotelManageService.getInstance().searchBookingList(date);
	 JSONObject json = null;
		for (BusinessHotelDomain bmd : list) {
			json = new JSONObject();
			json.put("bookingname", bmd.getBookingname());
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			json.put("checkin", sdf.format(bmd.getCheckin()));
			json.put("checkout", sdf.format(bmd.getCheckout()));
			json.put("id", bmd.getId());
			json.put("pplCnt", bmd.getPplCnt());
			json.put("roomcode", bmd.getRoomcode());
			json.put("status", bmd.getStatus());

			jsonArr.add(json);
		}
		
		jsonObj.put("dataLength", jsonArr.size());
		jsonObj.put("data", jsonArr);
		return jsonObj;
	}
}
