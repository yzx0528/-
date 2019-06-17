package com.cnstrong.domain;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public class JDBCUtils {
	//加载驱动并建立数据库连接
	public static Connection getConnection() throws SQLException,ClassNotFoundException{
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/strong?serverTimezone=UTC";
		String username="root";
		String password="123";
		Connection nonn =DriverManager.getConnection(url,username,password);
		return nonn;
	}
	public static void release(Statement stmt ,Connection conn) {
		if(stmt!=null) {
			try {
				stmt.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
			stmt=null;
		}
		if(conn!=null) {
			try {
				conn.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
			conn=null;
		}
		
	}
	public static void release(ResultSet rs,Statement stmt, Connection conn) {
		if(rs!=null) {
			try {
				rs.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
			rs = null;
		}
		release(stmt,conn);
	}
	public static List executeQuery(Connection conn, String sql) {
		if(conn!=null) {
			try {
				conn.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
			conn=null;
		}
		return null;
	}
	 public static void closeAll(Connection conn,Statement stmt,ResultSet rs){
	    	if(conn != null){
	    		try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
	    	}
	    	if(stmt != null){
	    		try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
	    	}
	    	if(rs != null){
	    		try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
	    	}
	    }
	
}
