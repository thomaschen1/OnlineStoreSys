package cn.thomaschen.entity;

public class OrderForm {
	
	
	private User user ;
	private Product product ;
	private int orderformId ;
	private int orderformTime ;
	public OrderForm () {
		
	}

	public OrderForm(User user, Product product, int orderformid) {
		super();
		this.user = user;
		this.product = product;
		this.orderformId = orderformid;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getOrderformId() {
		return orderformId;
	}
	public void setOrderformId(int orderformid) {
		this.orderformId = orderformid;
	}
	public int getOrderformTime() {
		return orderformTime;
	}
	public void setOrderformTime(int orderformTime) {
		this.orderformTime = orderformTime;
	}
	
	
	
	
}
