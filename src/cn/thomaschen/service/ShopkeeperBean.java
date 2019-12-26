package cn.thomaschen.service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import cn.thomaschen.entity.Shopkeeper;

public class ShopkeeperBean implements Serializable{
	private Shopkeeper shopkeeper;
	private String order;
	public Shopkeeper getShopkeeper() {
		return shopkeeper;
	}
	public void setShopkeeper(Shopkeeper shopkeeper) {
		this.shopkeeper = shopkeeper;
	}
	public String getOrder() {
		return order;
	}
	public void setOrder(String order) {
		this.order = order;
	}
	
}
