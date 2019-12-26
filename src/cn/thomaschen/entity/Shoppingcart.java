package cn.thomaschen.entity;

public class Shoppingcart {
	
	private User user ;
	private Product product;
	private int id;
	private int amount;
	public Shoppingcart(){
		
	}
	public Shoppingcart(User user, Product product, int id) {
		super();
		this.user = user;
		this.product = product;
		this.id = id;
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	
}
