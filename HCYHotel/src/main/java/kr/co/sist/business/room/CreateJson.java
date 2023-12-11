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
}
