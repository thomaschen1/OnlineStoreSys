package cn.thomaschen.productBean;
import product.Product;
import java.sql.*;
import java.util.*;

import cn.thomaschen.base.BaseMethod;

public class ProductBean implements java.io.Serializable {
	private Product product;
	private String flag;

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public List<Product> findData() {
		List<Product> products = new ArrayList<Product>();
		String sql = "";
		Object[] parms = new Object[1];
		if (product != null && product.getId() > 0) {
			sql = "select * from Product where id=?";
			parms[0] = product.getId();
		} else {
			sql = "select * from Product";
			parms = new Object[0];
		}
		try {
			BaseMethod man = new BaseMethod();
			ResultSet rs = man.queryData(sql, parms);
			while (rs.next()) {
				Product prod = new Product();
				prod.setId(rs.getInt("id"));
				prod.setName(rs.getString("name"));
				prod.setDescription(rs.getString("description"));
				prod.setPrice(rs.getDouble("price"));
				products.add(prod);
			}
			man.close();
			return products;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public boolean updateData() {
		String sql = "";
		Object[] parms = null;
		if (flag.equals("insert") && product != null) {
			sql = "INSERT INTO `Product` (`name`,`description`,`price`) VALUES (?,?,?)";
			parms = new Object[3];
			parms[0] = product.getName();
			parms[1] = product.getDescription();
			parms[2] = product.getPrice();
		} else if (flag.equals("update") && product != null && product.getId() > 0) {
			sql = "update Product set name=?,description=?,price=? where id = ?";
			parms = new Object[4];
			parms[0] = product.getName();
			;
			parms[1] = product.getDescription();
			parms[2] = product.getPrice();
			parms[3] = product.getId();
		} else if (flag.equals("delete") && product != null && product.getId() > 0) {
			sql = "delete from Product where id = ?";
			parms = new Object[1];
			parms[0] = product.getId();
		}
		if (!sql.equals("")) {
			BaseMethod man = new BaseMethod();
			boolean result = man.updateData(sql, parms);
			man.close();
			return result;
		}
		return false;
	}
}