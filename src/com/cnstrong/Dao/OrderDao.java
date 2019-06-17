package com.cnstrong.Dao;

import java.sql.*;

import com.cnstrong.domain.JDBCUtils;
public class OrderDao {
		public int addorder(String username,
						String maxmoney,
						String Datetime) {
			Statement stmt = null;
			ResultSet rs = null;
			Connection conn = null;
			PreparedStatement preStmt=null;
				try{
					conn= JDBCUtils.getConnection();
					String sql = "insert into order(username,maxmoney,Datetime)values(?,?,?)";
					preStmt = conn.prepareStatement(sql);
					preStmt.setString(1, username);
					preStmt.setString(2, maxmoney);
					preStmt.setString(3, Datetime);
					preStmt.executeUpdate();
					return 1;
				}catch (ClassNotFoundException e) {
					e.printStackTrace();
					return -2;
				}catch(SQLException e) {
					e.printStackTrace();
					return -3;
				}catch(Exception e) {
					e.printStackTrace();
					return -4;
				}
	}

}
