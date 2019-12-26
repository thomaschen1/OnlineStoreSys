package cn.thomaschen.entity;

import cn.thomaschen.entity.Img;

public class Product {
	private int id;
	private String name;//����
	private double price;//�۸�
	private String describ;//����
	private String sperification;//���
	private String img;//ͼƬ
	private int amount;//����
	public Product(){
		
	}
	public Product(int id, String name, double price, String describ, String img, int amount,String sperification) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.describ = describ;
		this.img = img;
		this.amount = amount;
		this.sperification=sperification;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getDescrib() {
		return describ;
	}
	public void setDescrib(String describ) {
		this.describ = describ;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	public String getSperification() {
		return sperification;
	}
	public void setSperification(String sperification) {
		this.sperification = sperification;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
}
