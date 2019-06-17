package com.cnstrong.javabean;

import java.sql.SQLException;

public class OrderInfor {
	public boolean add(Order order) {
		OrderDao dao=new OrderDao();
		boolean b=false;
		try {
			b = dao.insert(order);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
}
