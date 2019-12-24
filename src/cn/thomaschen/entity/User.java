package cn.thomaschen.entity;

import java.io.Serializable;
import java.util.List;

public class User implements Serializable{
	private static int id=0;
	private String phonenumber;
	private String password;
	private String name;
	private String nickname;
	private String sex;
	private String birthday;
	private String area;
	private String postbox;
	private List<Goods> goods;
	
	public User() {
	
	}
	public User(String name, String nickname, String sex, String birthday) {
		super();
		this.name = name;
		this.nickname = nickname;
		this.sex = sex;
		this.birthday = birthday;
	}
	
	public User(String phonenumber, String password, String name, String nickname, String sex, String birthday,
			String area, String postbox, List<Goods> goods) {
		super();
		this.id = id++;
		this.phonenumber = phonenumber;
		this.password = password;
		this.name = name;
		this.nickname = nickname;
		this.sex = sex;
		this.birthday = birthday;
		this.area = area;
		this.postbox = postbox;
		this.goods = goods;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	public List<Goods> getGoods() {
		return goods;
	}
	public void setGoods(List<Goods> goods) {
		this.goods = goods;
	}
	
	public String getPostbox() {
		return postbox;
	}
	public void setPostbox(String postbox) {
		this.postbox = postbox;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
}
