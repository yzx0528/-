package com.cnstrong.Dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import com.cnstrong.domain.JDBCUtils;

public class UpdatepersonDao {
	
	public boolean update(int id1,String username,String userpassword,String tishi,String truename,String gender,String selectyear,String selectmonth,String selectid,String userID ) {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = JDBCUtils.getConnection();
			stmt = conn.createStatement();
			String sql = "UPDATE owner set username='"+username+"',userpassword='"+userpassword+"',tishi='"+tishi+"',truename='"+truename+"',gender='"+gender+"',selectyear='"+selectyear+"',selectyear='"+selectyear+"',selectid='"+selectid+"',userID='"+userID+"' WHERE oid='"+id1+"'";
			int num = stmt.executeUpdate(sql);
			if(num>0) {
				return true;
			}
			return false;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.release(rs, stmt,conn);
		}
		return false;
	}
}