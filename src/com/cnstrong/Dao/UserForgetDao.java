package com.cnstrong.Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.cnstrong.domain.JDBCUtils;

public class UserForgetDao {
	public String check1(String username) { 
		Statement stmt = null;
		ResultSet rs = null;
		Connection conn = null;
		String a1=null;
		try{
				conn= JDBCUtils.getConnection();
				stmt = conn.createStatement();
				String sql = "select * from owner where username='"+username+"'";//
				rs= stmt.executeQuery(sql);
				while(rs.next()){
				String tishi= rs.getString("tishi");
				a1 = tishi;
			
				}
			}catch (ClassNotFoundException e) {
				e.printStackTrace();
			}catch(SQLException e) {
				e.printStackTrace();
			}catch(Exception e) {
				e.printStackTrace();
			}

		return a1;
		
		}

}
