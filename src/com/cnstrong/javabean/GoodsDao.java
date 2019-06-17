package com.cnstrong.javabean;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

public class GoodsDao {
	public List findAll() throws SQLException{
		QueryRunner runner=new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from goods";
		List list=(List) runner.query(sql, new BeanListHandler(Goods.class));
		return list;
	}
	public List findtype(String goodstype) throws SQLException {
		QueryRunner runner=new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from goods where goodstype=?";
		List list=(List)runner.query(sql,new BeanListHandler(Goods.class),new Object[] {goodstype});
		return list;
	}
	public Goods find(String goodsid) throws SQLException {
		QueryRunner runner=new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from goods where goodsid=?";
		Goods goods=(Goods)runner.query(sql,new BeanHandler(Goods.class),new Object[] {goodsid});
		return goods;
	}
	public Boolean insert(Goods goods) throws SQLException{
		QueryRunner runner=new QueryRunner(DataSourceUtils.getDataSource());
		String sql="insert into goods(goodsid,goodsname,goodstype,goodsprice,goodspicture,goodsdescription) values(?,?,?,?,?,?)";
		int num=runner.update(sql,new Object[] {goods.getGoodsid(),goods.getGoodsname(),goods.getGoodstype(),goods.getGoodsprice(),goods.getGoodspicture(),goods.getGoodsdescription()});
		if(num>0) {
			return true;
		}
		return false;
	}

	public Boolean update(Goods goods,String goodsid) throws SQLException{
		QueryRunner runner=new QueryRunner(DataSourceUtils.getDataSource());
		String sql="update goods set goodsid=?,goodsname=?,goodstype=?,goodsprice=?,goodspicture=?,goodsdescription=? where goodsid=?";
		int num=runner.update(sql,new Object[] {goods.getGoodsid(),goods.getGoodsname(),goods.getGoodstype(),goods.getGoodsprice(),goods.getGoodspicture(),goods.getGoodsdescription(),goodsid});	
		if(num>0) {
			return true;
		}
		return false;
	}

	public Boolean delete(String goodsid) throws SQLException{
		QueryRunner runner=new QueryRunner(DataSourceUtils.getDataSource());
		String sql="delete from goods where goodsid=?";
		int num=runner.update(sql,goodsid);
		if(num>0) {
			return true;
		}
		return false;
	}
}
