package cn.thomaschen.service;

import java.io.Serializable;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;
import cn.thomaschen.base.DBMangerBean;
import cn.thomaschen.entity.User;

public class UserBean implements Serializable{
	private User user;
	private String order;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getOrder() {
		return order;
	}
	public void setOrder(String order) {
		this.order = order;
	}
	public User findData(){
		List<User> users=new ArrayList<User>();
		String sql="";
		Object[] params=new Object[1];
		if(user!=null&&user.getId()>0) 
		sql="select * from user where id=?";
		else {
		sql="select * from user";
		params=new Object[0];
		}
		try {
			DBMangerBean man=new DBMangerBean();
			ResultSet rs=man.getData(sql, params);
			while(rs.next()) { 
				//rs.next时 游标最先是指向第一条记录前的位置
				//所以第一次rs.next后 游标指向的正好是第一条记录（如果有的话）
				User er=new User();
				er.setName(rs.getString("name"));
				er.setPhonenumber(rs.getString("phonenumber"));
				er.setPassword(rs.getString("password"));
				er.setNickname(rs.getString("nickname"));
				er.setSex(rs.getString("sex"));
				er.setBirthday(rs.getString("birthday"));
				er.setPostbox(rs.getString("postbox"));
				users.add(er);
				}
				for(User reuser:users) {
					if(reuser.getPhonenumber().equals(user.getPhonenumber())
							&&reuser.getPassword().equals(user.getPassword())) {
						rs.close();
						return reuser;
					}	
				}
			rs.close();//断开数据库连接
			return null;
		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public boolean updataData() {
		String sql="";
		Object[] params=null;
		if(order.equals("insert")&&user.getPhonenumber()!=null&&user.getPhonenumber().length()==11) {
			sql="insert into user(phonenumber,password)value(?,?)";
			params=new Object[2];
			params[0]=user.getPhonenumber();
			params[1]=user.getPassword();
		}
		else if(order.equals("update")&&user!=null&&user.getId()>0) {
			sql="update user set name=?,phonenumber=?,password=?,nickname=?,sex=?,birthday=?,postbox=? where id=?";
			params=new Object[8];
			params[0]=user.getName();
			params[1]=user.getPhonenumber();
			params[2]=user.getPassword();
			params[3]=user.getNickname();
			params[4]=user.getSex();
			params[5]=user.getBirthday();
			params[6]=user.getPostbox();
			params[7]=user.getId();
		}
		else if(order.equals("delete")&&user!=null&&user.getId()>0) {
			sql="delete from user where id=?";
			params=new Object[1];
			params[0]=user.getId();
		}
		if(!sql.equals("")) {
			DBMangerBean man=new DBMangerBean();
			boolean result=man.UpdateData(sql, params);
			man.close();
			return result;
		}
		return false;
		
	}
	
	public User judge(User user) throws SQLException {
		UserBean bean=new UserBean();
		bean.setUser(user);
		return bean.findData();
	}
}
