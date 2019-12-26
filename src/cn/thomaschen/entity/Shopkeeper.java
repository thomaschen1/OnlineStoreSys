package cn.thomaschen.entity;

import java.io.Serializable;
import java.util.List;

public class Shopkeeper implements Serializable{
	private User user;
	private List<Product> goods;
	private String shopname;
	private String shopdescrib;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getShopdescrib() {
		return shopdescrib;
	}
	public void setShopdescrib(String shopdescrib) {
		this.shopdescrib = shopdescrib;
	}
	public String getShopname() {
		return shopname;
	}
	public void setShopname(String shopname) {
		this.shopname = shopname;
	}
	public List<Product> getGoods() {
		return goods;
	}
	public void setGoods(List<Product> goods) {
		this.goods = goods;
	}
	
}
