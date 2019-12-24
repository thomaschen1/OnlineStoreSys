package cn.thomaschen.entity;

import java.io.Serializable;
import java.util.List;

public class Shopkeeper extends User implements Serializable{
	private List<Product> Product;
	private String shopname;
	private String shopdescrib;
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
		return Product;
	}
	public void setGoods(List<Product> Product) {
		this.Product = Product;
	}
	
}
