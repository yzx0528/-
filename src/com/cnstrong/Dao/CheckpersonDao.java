package com.cnstrong.Dao;

import java.sql.*;

import com.cnstrong.domain.JDBCUtils;

public class CheckpersonDao{
	public int check(String username,String userpassword) { 
	Statement stmt = null;
	ResultSet rs = null;
	Connection conn = null;
	try{
			conn= JDBCUtils.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from owner where username='"+username+"'";//
			rs= stmt.executeQuery(sql);
			while(rs.next()){
			String password1= rs.getString("userpassword");
			if(password1.equals(userpassword))
				return 1;
			}
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
			return -1;

		}catch(SQLException e) {
			e.printStackTrace();
			return -1;

		}catch(Exception e) {
			e.printStackTrace();
			return -1;

		}
		return -1;
	}

}
