package com.cnstrong.Dao;

import java.sql.*;

import com.cnstrong.domain.JDBCUtils;

public class AddpersonDao {
	public int add(String username,
					String userpassword,
					String tishi,
					String truename,
					String gender,
					String selectyear,
					String selectmonth,
					String selectid,
					String userID) {
		Statement stmt = null;
		ResultSet rs = null;
		Connection conn = null;
		PreparedStatement preStmt=null;
			try{
				conn= JDBCUtils.getConnection();
				String sql = "insert into owner(username,userpassword,tishi,truename,gender,selectyear,selectmonth,selectid,userID)values(?,?,?,?,?,?,?,?,?)";
				preStmt = conn.prepareStatement(sql);
				preStmt.setString(1, username);
				preStmt.setString(2, userpassword);
				preStmt.setString(3, tishi);
				preStmt.setString(4, truename);
				preStmt.setString(5, gender);
				preStmt.setString(6, selectyear);
				preStmt.setString(7, selectmonth);
				preStmt.setString(8, selectid);
				preStmt.setString(9, userID);
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
}}
