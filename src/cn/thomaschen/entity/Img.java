package cn.thomaschen.entity;
public class Img {
	private int id;
	private String src;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
	public Img(int id, String src) {
		super();
		this.id = id;
		this.src = src;
	}
	public Img() {
		
	}
}
