package com.cnstrong.javabean;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

public class OrderDao {
	public List findAll() throws SQLException{
		QueryRunner runner=new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from Order";
		List list=(List) runner.query(sql, new BeanListHandler(Order.class));
		return list;
	}
	
	public Order find(String orderid) throws SQLException {
		QueryRunner runner=new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from order where orderid=?";
		Order order=(Order)runner.query(sql,new BeanHandler(Order.class),new Object[] {orderid});
		return order;
	}


	public Boolean insert(Order order) throws SQLException{
		QueryRunner runner=new QueryRunner(DataSourceUtils.getDataSource());
		String sql="insert into order(goodsid,buynum,ordertotal,username,datetime) values(?,?,?,?,?)";
		int num=runner.update(sql,new Object[] {order.getGoodsid(),order.getBuynum(),order.getOrdertotal(),order.getUsername(),order.getDatetime()});
		if(num>0) {
			return true;
		}
		return false;
	}
	
	public Boolean delete(String orderid) throws SQLException{
		QueryRunner runner=new QueryRunner(DataSourceUtils.getDataSource());
		String sql="delete from order where orderid=?";
		int num=runner.update(sql,orderid);
		if(num>0) {
			return true;
		}
		return false;
	}
}
