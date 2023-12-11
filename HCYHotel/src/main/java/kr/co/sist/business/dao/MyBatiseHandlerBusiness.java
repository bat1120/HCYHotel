package kr.co.sist.business.dao;

import java.io.IOException;
import java.io.Reader;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Component;

@Component
public class MyBatiseHandlerBusiness {
   private static SqlSessionFactory ssf;
   private static MyBatiseHandlerBusiness mbh;

   private MyBatiseHandlerBusiness() {
   }

   public static MyBatiseHandlerBusiness getInstance() {
      if (mbh == null) {
         mbh = new MyBatiseHandlerBusiness();
      }

      return mbh;
   }

   private SqlSessionFactory myBatisBuilder(String configFile) {
      if (ssf == null) {
         try {
            Reader reader = Resources.getResourceAsReader(configFile);
            ssf = (new SqlSessionFactoryBuilder()).build(reader);
            if (reader != null) {
               reader.close();
            }
         } catch (IOException var3) {
            var3.printStackTrace();
         }
      }

      return ssf;
   }

   public SqlSession getMyBatisHandler(boolean autoCommit) {
      SqlSession ss = null;
      ss = this.myBatisBuilder("kr/co/sist/business/dao/mybatis-config.xml").openSession(autoCommit);
      return ss;
   }

   public void closeHandler(SqlSession ss) {
      if (ss != null) {
         ss.close();
      }

   }
}
