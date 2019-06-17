package com.cnstrong.javabean;

public class Order {
	private String orderid;
	private String goodsid;
	private double buynum;
	private String username;
	private double ordertotal;
	private String datetime;
	
	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public String getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(String goodsid) {
		this.goodsid = goodsid;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public double getBuynum() {
		return buynum;
	}
	public void setBuynum(double buynum) {
		this.buynum = buynum;
	}
	public double getOrdertotal() {
		return ordertotal;
	}
	public void setOrdertotal(double ordertotal) {
		this.ordertotal = ordertotal;
	}
	public String getDatetime() {
		return datetime;
	}
	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}
}
