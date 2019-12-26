package cn.thomaschen.service;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.thomaschen.base.DBMangerBean;
import cn.thomaschen.entity.Product;
import cn.thomaschen.entity.Shoppingcart;
import cn.thomaschen.entity.User;

public class ShoppingcarBean {
		private Shoppingcart shoppingcart;
		private String flag;

		public Shoppingcart getShoppingcar() {
			return shoppingcart;
		}

		public void setShoppingcart(Shoppingcart shoppingcar) {
			this.shoppingcart = shoppingcar;
		}

		public String getFlag() {
			return flag;
		}

		public void setFlag(String flag) {
			this.flag = flag;
		}

		public List<Shoppingcart> findData() {
			List<Shoppingcart> shoppingcarts = new ArrayList<Shoppingcart>();
			String sql = "";
			Object[] parms = new Object[1];
			if (shoppingcart != null && shoppingcart.getId() > 0) {
				sql = "select * from  shoppingcart where id=?";
				parms[0] = shoppingcart.getId();
			} else {
				sql = "select * from  shoppingcart";
				parms = new Object[0];
			}
			try {
				DBMangerBean man = new DBMangerBean();
				ResultSet rs = man.getData(sql, parms);
				while (rs.next()) {
					User user=new User();
					Product product=new Product();
					Shoppingcart cart = new Shoppingcart();
					cart.setUser(user);
					cart.setProduct(product);
					cart.setId(rs.getInt("id"));
					cart.getUser().setId(rs.getInt("userid"));
					cart.getProduct().setId(rs.getInt("productid"));
					cart.getProduct().setName(rs.getString("name"));
					cart.getProduct().setImg(rs.getString("photo"));
					cart.getProduct().setSperification(rs.getString("sperification"));
					cart.getProduct().setAmount(rs.getInt("number"));
					cart.getProduct().setPrice(rs.getInt("quantity"));
					shoppingcarts.add(cart);
				}
				man.close();
				return shoppingcarts;
			} catch (SQLException e) {
				e.printStackTrace();
				return null;
			}
		}

		public boolean updateData() {
			String sql = "";
			Object[] parms = null;
			if (flag.equals("insert") && shoppingcart!= null&&shoppingcart.getUser()!=null) {
				sql = "insert into shoppingcart(userid,productid,name,photo,sperification,number,quantity) VALUES (?,?,?,?,?,?,?)";
				parms = new Object[7];
				parms[0] = shoppingcart.getUser().getId();
				parms[1] = shoppingcart.getProduct().getId();
				parms[2] = shoppingcart.getProduct().getName();
				parms[3] = shoppingcart.getProduct().getImg();
				parms[4] = shoppingcart.getProduct().getSperification();
				parms[5] = shoppingcart.getProduct().getAmount();
				parms[6]=shoppingcart.getProduct().getPrice();
			} else if (flag.equals("update") && shoppingcart!= null && shoppingcart.getId() > 0) {
				sql = "update shoppingcart set number=? where id=?";
				parms = new Object[2];
				parms[0] = shoppingcart.getProduct().getAmount();
				parms[1] = shoppingcart.getId();
			} else if (flag.equals("delete") && shoppingcart != null && shoppingcart.getId() > 0) {
				sql = "delete from shoppingcart where id = ?";
				parms = new Object[1];
				parms[0] = shoppingcart.getId();
			}
			if (!sql.equals("")) {
				DBMangerBean man = new DBMangerBean();
				boolean result = man.UpdateData(sql, parms);
				man.close();
				return result;
			}
			return false;
		}
	}
