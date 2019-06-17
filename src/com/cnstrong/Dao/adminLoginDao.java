package com.cnstrong.Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.cnstrong.domain.JDBCUtils;

public class adminLoginDao{
	public int find(String uname,String upassword)
	{
		Connection conn = null;
		Statement stmt =null;
		ResultSet rs = null;
		try {
			conn=JDBCUtils.getConnection();
			stmt = conn.createStatement();
			String sql="select count(*) from admin where name = '"+uname+"' and password = '"+upassword+"'";
			rs = stmt.executeQuery(sql);
			int count = -1;
			if(rs.next()) {
				count = rs.getInt(1);
			}

			return count;
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			return -1;
		}catch(SQLException e) {
			e.printStackTrace();
			return -1;
		}catch(Exception e) {
			e.printStackTrace();
			return -1;
		}
		
	}
}
