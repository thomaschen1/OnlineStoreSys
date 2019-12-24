package cn.thomaschen.base;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBMangerBean {
	private Connection dbcon;
	//连接数据库
	private PreparedStatement statement = null;
	//处理命令;
	private ResultSet result = null;
	//结果集

	public DBMangerBean() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			//返回与给定的字符串名称相关联类或接口的Class对象
			//注册数据库驱动
			dbcon = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinestore?serverTimezone=UTC&characterEncoding=utf-8&useSSL=false", "root", "ps19980114");
			////连接数据库所需要的信息
			//获取数据库连接
		} catch (ClassNotFoundException e) {
			System.out.println("未发现数据库驱动类!");
			System.out.println(e.toString());
		} catch (Exception e) {
			System.out.println("出现异常!");
			System.out.println(e.toString());
		}
	}

	public ResultSet getData(String sql, Object[] parms) throws SQLException {
		try {
			statement = dbcon.prepareStatement(sql);//运行处理命令
			for (int i = 0; i < parms.length; i++) {
				statement.setObject(i + 1, parms[i]);
			}
			result = statement.executeQuery();//返回结果
		} catch (SQLException e) {
			System.out.println(e.toString());
			throw e;
		}
		return result;
	}

	public boolean UpdateData(String sql, Object[] parms) {
		try {
			statement = dbcon.prepareStatement(sql);
			for (int i = 0; i < parms.length; i++) {
				statement.setObject(i + 1, parms[i]);
			}
			statement.execute();//返回布尔值，表明执行该SQL语句是否返回了ResultSet
			
			return true;
		} catch (Exception e) {
			System.out.println(e.toString());
			return false;
		}
	}

	public void close() {
		try {
			if (result != null) {
				result.close();
			}
			if (statement != null) {
				statement.close();
			}
			if (dbcon != null) {
				dbcon.close();
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}
}
