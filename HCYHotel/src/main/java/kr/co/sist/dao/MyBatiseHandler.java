package kr.co.sist.dao;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatiseHandler {
private static MyBatiseHandler mbh;
private static SqlSessionFactory ssf;

private MyBatiseHandler() {
	org.apache.ibatis.logging.LogFactory.useLog4JLogging();
}//constructor

public static MyBatiseHandler getInstance() {
	if(mbh == null) {mbh = new MyBatiseHandler();}
	
	return mbh;
}//getInstance

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
	SqlSession ss = null;
	
	ss= myBatisBuilder("kr/co/sist/dao/mybatis-config.xml").openSession(autoCommit);
	
	return ss;
}//getMyBatisHandler

public void closeHandler(SqlSession ss) {
	if(ss!= null) {ss.close();}
}//closeHandler

}//class
