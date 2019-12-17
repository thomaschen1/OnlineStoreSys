package product;

public class Product {
	private int id;
	private double price;
	private String name;
	private String description;
	public Product() {}
	public Product(int id, double price, String name, String desciption) {
		super();
		this.id = id;
		this.price = price;
		this.name = name;
		this.description = desciption;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String desciption) {
		this.description = desciption;
	}
	
	
}
