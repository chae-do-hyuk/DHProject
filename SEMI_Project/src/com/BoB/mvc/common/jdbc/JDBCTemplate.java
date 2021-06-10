package com.BoB.mvc.common.jdbc;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import com.BoB.mvc.common.config.ConfigLocation;

public class JDBCTemplate {
   
   /* */
   public static Connection getConnection() {
      
      // 연결 객체를 만들기 위한 변수
      Connection con = null;
      
      // 연결에 필요한 정보를 담고잇는 객체
      Properties prop = new Properties();
      
      try {
         prop.load(new FileReader(ConfigLocation.CONNECTION_CONFIG_LOCATION));
         String driver = prop.getProperty("driver");
         String url = prop.getProperty("url");
         
         Class.forName(driver);
         
         con = DriverManager.getConnection(url,prop);
         
         /* autoCommit 설정 변경*/
         con.setAutoCommit(false);
         
      }catch(IOException e) {
         e.printStackTrace();
      } catch (ClassNotFoundException e) {
         e.printStackTrace();
      } catch (SQLException e) {
         e.printStackTrace();
      }
            
      return con;
   }

   
   public static void close(Connection con) {
      
      try {
         if(con != null && !con.isClosed()) {
            con.close();
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }
   }
   
   public static void close(Statement stmt) {
      
      try {
         if(stmt != null && !stmt.isClosed()) {
            stmt.close();
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }
   }
   
   public static void close(ResultSet rset) {
      
      try {
         if(rset != null && !rset.isClosed()) {
            rset.close();
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }
   }
   
   public static void commit(Connection con) {
      
      try {
         if(con != null && !con.isClosed()) {
            con.commit();
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }
      
   }
   
   public static void rollback(Connection con) {
      
      try {
         if(con != null && !con.isClosed()) {
            con.rollback();
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }
      
   }
}


























