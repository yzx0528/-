package com.cnstrong.Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.cnstrong.domain.JDBCUtils;

public class delpersonDao {
	public boolean del(int id1){
		Statement stmt = null;
		ResultSet rs = null;
		Connection conn = null;
		try {
			conn=JDBCUtils.getConnection();
			stmt=conn.createStatement();
			String sql="DELETE FROM owner WHERE oid="+id1;
			int num = stmt.executeUpdate(sql);
			if(num>0) {
				return true;
			}return false;
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				JDBCUtils.release(rs, stmt,conn);
			}
			return false;
	}	
}
