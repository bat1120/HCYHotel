package kr.co.sist.admin.dao;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Component;

import lombok.NoArgsConstructor;
@Component
public class MyBatiseHandlerAdmin {
private static MyBatiseHandlerAdmin mbh;
private MyBatiseHandlerAdmin() {
}
public static MyBatiseHandlerAdmin getInstance() {
	if(mbh==null) {mbh=new MyBatiseHandlerAdmin();}
	return mbh;
}//getInstance
private static SqlSessionFactory ssf;


private SqlSessionFactory myBatisBuilder(String configFile) {
	if(ssf==null) {
		try {
			Reader reader = Resources.getResourceAsReader(configFile);
			ssf = new SqlSessionFactoryBuilder().build(reader);
			if(reader != null) {reader.close();}
		} catch (IOException e) {
			e.printStackTrace();
		}//catch
	}//if
	return ssf;
}//myBatisBuilder

public SqlSession getMyBatisHandler(boolean autoCommit) {
	if(mbh==null) {mbh=new MyBatiseHandlerAdmin();}
	SqlSession ss = null;
	
	ss= myBatisBuilder("kr/co/sist/admin/dao/mybatis-config.xml").openSession(autoCommit);
	
	return ss;
}//getMyBatisHandler

public void closeHandler(SqlSession ss) {
	if(ss!= null) {ss.close();}
}//closeHandler

}//class
