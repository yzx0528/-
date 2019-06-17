package com.cnstrong.javabean;

import java.util.*;

import javax.swing.JOptionPane;

public class shopcar {
	private List buylist = new ArrayList();
	public void setBuylist(List buylist) {
		this.buylist = buylist;
	}
	public List getBuylist(){
		return buylist;
	}
	//锟斤拷锟斤车锟斤拷锟斤拷锟狡�
	public void additem(Goods single,int buynum){
		if(single!=null){
			//锟斤拷锟斤拷锟斤拷锟斤拷品
			//锟斤拷锟斤拷锍滴拷眨锟斤拷锟街憋拷咏锟斤拷锟斤拷锟狡凤拷锟斤拷牍猴拷锍�
			if(buylist.size()==0){
				//锟斤拷锟斤拷锟斤拷时锟斤拷锟斤拷temp锟斤拷鸥锟斤拷锟狡凤拷锟斤拷锟较�
				goodsBean temp = new goodsBean();
				temp.setProdno(single.getGoodsid());
				temp.setName(single.getGoodsname());
				temp.setNum(buynum);
				temp.setPrice(single.getGoodsprice());
				temp.setPic(single.getGoodspicture());
				//锟斤拷锟斤拷锟斤拷品锟斤拷锟诫购锟斤车
				buylist.add(temp);
			}
			//锟斤拷锟斤拷锍碉拷锟轿拷锟�
			else{
				int i=0;
				//锟斤拷锟揭癸拷锟斤车锟斤拷锟角凤拷锟叫碉拷前要锟斤拷拥锟斤拷锟狡�
				for(;i<buylist.size();i++){
					goodsBean temp=(goodsBean)buylist.get(i);
					//锟斤拷锟斤拷锍碉拷锟斤拷锟斤拷写锟斤拷锟斤拷锟狡凤拷锟斤拷锟斤拷薷锟斤拷锟侥癸拷锟斤拷锟斤拷锟酵匡拷锟斤拷锟斤拷锟斤拷锟�
					if(temp.getName().equals(single.getGoodsname())){
						//JOptionPane.showMessageDialog(null, "要锟斤拷拥锟斤拷锟狡凤拷锟�"+single.getGoodsname());
						temp.setNum(temp.getNum()+buynum);
						//JOptionPane.showMessageDialog(null, "shopcar.java:锟斤拷锟斤车锟斤拷锟秸ｏ拷锟斤拷锟斤拷锟斤拷品锟斤拷"+temp.getName());
						break;
					}
				}
				//锟斤拷锟斤车锟斤拷没锟叫碉拷前要锟斤拷拥锟斤拷锟狡凤拷锟斤拷蚪锟斤拷锟狡凤拷锟接斤拷锟斤车锟斤拷锟斤拷锟铰达拷锟斤拷凸锟斤拷锍滴拷锟绞憋拷锟斤拷锟斤拷品锟侥达拷锟斤拷锟斤拷同
				if(i>=buylist.size()){
					goodsBean temp = new goodsBean();
					temp.setProdno(single.getGoodsid());
					temp.setName(single.getGoodsname());
					temp.setNum(buynum);
					temp.setPrice(single.getGoodsprice());
					temp.setPic(single.getGoodspicture());
					//锟斤拷锟斤拷锟斤拷品锟斤拷锟诫购锟斤车
					buylist.add(temp);
				}
			}
		}
	}
	
	//锟睫革拷锟斤拷品锟斤拷锟斤拷锟斤拷锟斤拷
	public void changebuynum(String prodno,int buynum){
		int i=0;
		//锟节癸拷锟斤车锟斤拷锟斤拷腋锟斤拷锟狡�
		for(;i<buylist.size();i++){
			goodsBean temp=(goodsBean)buylist.get(i);
			//锟斤拷锟斤拷锍碉拷锟斤拷锟斤拷写锟斤拷锟斤拷锟狡凤拷锟斤拷锟斤拷薷锟斤拷锟侥癸拷锟斤拷锟斤拷
			if(temp.getProdno().equals(prodno)){
				temp.setNum(buynum);
				break;
			}
		}
	}
	
	//锟接癸拷锟斤车锟斤拷删锟斤拷指锟斤拷锟斤拷锟斤拷品
	public void removeitem(String id){
		//锟斤拷锟饺★拷锟斤拷锟斤拷锍碉拷锟斤拷锟斤拷品
		for(int i=0;i<buylist.size();i++){
			goodsBean temp=(goodsBean)buylist.get(i);
			//锟斤拷锟斤拷业锟斤拷锟揭撅拷锟斤拷锟斤拷品锟斤拷锟斤拷锟斤拷庸锟斤拷锍碉拷锟缴撅拷锟�
			if(temp.getProdno().equals(id)){
				int ans=JOptionPane.showConfirmDialog(null, "确定要删除吗？","提示",JOptionPane.YES_NO_OPTION);
				if(ans == JOptionPane.YES_OPTION){
					buylist.remove(i);
				}
				break;
			}
		}
	}
	//锟斤拷展锟斤拷锍�
	public void clearcart(){
		buylist.clear();
	}
}
