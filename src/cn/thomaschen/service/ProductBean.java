package cn.thomaschen.service;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.thomaschen.base.DBMangerBean;
import cn.thomaschen.entity.Product;
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
			sql = "select * from  products where id=?";
			parms[0] = product.getId();
		} else {
			sql = "select * from  products";
			parms = new Object[0];
		}
		try {
			DBMangerBean man = new DBMangerBean();
			ResultSet rs = man.getData(sql, parms);
			while (rs.next()) {
				Product prod = new Product();
				prod.setId(rs.getInt("id"));
				prod.setName(rs.getString("name"));
				prod.setPrice(rs.getDouble("unitprice"));
				prod.setDescrib(rs.getString("productIntrod"));
				prod.setSperification(rs.getString("sperification"));
				prod.setImg(rs.getString("photo"));
				prod.setAmount(rs.getInt("number"));
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
			sql = "insert into products(name,photo,productIntrod,sperification,number,unitprice) VALUES (?,?,?,?,?,?)";
			parms = new Object[6];
			parms[0] = product.getName();
			parms[1] = product.getImg();
			parms[2] = product.getDescrib();
			parms[3] = product.getSperification();
			parms[4] = product.getAmount();
			parms[5] = product.getPrice();
		} else if (flag.equals("update") && product != null && product.getId() > 0) {
			sql = "update products set name=?,photo=?,productIntrod=?,sperification=?,number=?,unitprice=? where id=?";
			parms = new Object[7];
			parms[0] = product.getName();
			parms[1] = product.getImg();
			parms[2] = product.getDescrib();
			parms[3] = product.getSperification();
			parms[4] = product.getAmount();
			parms[5] = product.getPrice();
			parms[6] = product.getId();
		} else if (flag.equals("delete") && product != null && product.getId() > 0) {
			sql = "delete from products where id = ?";
			parms = new Object[1];
			parms[0] = product.getId();
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