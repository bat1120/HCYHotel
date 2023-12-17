package kr.co.sist.user.roominfo;

public class RoomInfoDAO {
	private static RoomInfoDAO riDAO;
	
	private RoomInfoDAO() {
	}//constructor
	
	public static RoomInfoDAO getInstance() {
		if(riDAO==null) {
			riDAO=new RoomInfoDAO();
		}//end if
		return riDAO;  
	}//getInstance
}
