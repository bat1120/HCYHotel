package kr.co.sist.business.room;

import java.util.Iterator;
import java.util.List;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class CreateJson {
   JSONObject jsonObj = new JSONObject();
   JSONArray jsonArr = new JSONArray();

   public JSONObject createJson(SelectRoomVO srVO) {
      List<RoomListDomain> list = BusinessRoomModifyDAO.getInstance().selectRoomList(srVO);
      JSONObject json = null;
      Iterator var5 = list.iterator();

      while(var5.hasNext()) {
         RoomListDomain rld = (RoomListDomain)var5.next();
         json = new JSONObject();
         json.put("roomcode", rld.getRoomcode());
         json.put("roomname", rld.getRoomname());
         json.put("typename", rld.getTypename());
         json.put("average_rating", rld.getAverage_rating());
         json.put("price", rld.getPrice());
         json.put("reservation_count", rld.getReservation_count());
         this.jsonArr.add(json);
      }

      this.jsonObj.put("dataLength", this.jsonArr.size());
      this.jsonObj.put("data", this.jsonArr);
      return this.jsonObj;
   }

   public JSONObject createJson(String id) {
      List<RoomListDomain> list = BusinessRoomModifyDAO.getInstance().selectAllRoomList(id);
      JSONObject json = null;
      Iterator var5 = list.iterator();

      while(var5.hasNext()) {
         RoomListDomain rld = (RoomListDomain)var5.next();
         json = new JSONObject();
         json.put("roomcode", rld.getRoomcode());
         json.put("roomname", rld.getRoomname());
         json.put("typename", rld.getTypename());
         json.put("average_rating", rld.getAverage_rating());
         json.put("price", rld.getPrice());
         json.put("reservation_count", rld.getReservation_count());
         this.jsonArr.add(json);
      }

      this.jsonObj.put("dataLength", this.jsonArr.size());
      this.jsonObj.put("data", this.jsonArr);
      return this.jsonObj;
   }
   
   public JSONObject roomType(String hotelcode) {
	   List<RoomTypeCodeDomain> list = BusinessRoomModifyDAO.getInstance().selectRoomTypeCode(hotelcode);
	    JSONObject json = new JSONObject();
	    JSONArray jsonArray = new JSONArray();
	    System.out.println(list);
	    for (RoomTypeCodeDomain roomType : list) {
	        JSONObject roomTypeJson = new JSONObject();
	        roomTypeJson.put("typename", roomType.getTypename());
	        roomTypeJson.put("typecode", roomType.getTypecode());
	        // 나머지 필드도 유사하게 추가해주세요.

	        jsonArray.add(roomTypeJson);
	    }

	    json.put("data", jsonArray);

	    return json;
   }
   public JSONObject roomTypeInfo(String typecode) {
	   RoomTypeInfoDomain rtid=BusinessRoomModifyDAO.getInstance().selectRoomTypeinfo(typecode);
	   List<ServiceDomain> list=BusinessRoomModifyDAO.getInstance().selectService();
	   JSONObject json=new JSONObject();
	   JSONArray jsonArray = new JSONArray();
	   System.out.println(list);
	    for (ServiceDomain sd : list) {
	        JSONObject roomTypeJson = new JSONObject();
	        roomTypeJson.put("servicecode", sd.getServicecode());
	        roomTypeJson.put("sname", sd.getSname());
	        // 나머지 필드도 유사하게 추가해주세요.

	        jsonArray.add(roomTypeJson);
	    }
	   json.put("typename", rtid.getTypename());
	   json.put("amenity", rtid.getAmenity());
	   json.put("information", rtid.getInformation());
	   json.put("typecode", rtid.getTypecode());
	   json.put("price", rtid.getPrice());
	   json.put("addprice", rtid.getAddprice());
	   json.put("basiccapacity", rtid.getBasiccapacity());
	   json.put("maxcapacity", rtid.getMaxcapacity());
	   json.put("data2", jsonArray);
	   
	   return json;
   }
}
