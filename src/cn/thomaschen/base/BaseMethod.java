package cn.thomaschen.base;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.protocol.Resultset;

import cn.thomaschen.util.C3p0Utils;

public class BaseMethod {
	
	//声明数据库连接对象
	private Connection jdbc;
	//
	private PreparedStatement statement = null;
	//返回值
	private ResultSet result = null;
	
	public ResultSet queryData(String sql,Object[] params) throws SQLException{
		try {
			jdbc = C3p0Utils.getConnection();
			statement = jdbc.prepareStatement(sql);
			for (int i = 0; i < params.length; i++) {
				statement.setObject(i + 1, params[i]);
			}
			result = statement.executeQuery();
		} catch (SQLException e) {
			System.out.println(e.toString());
			throw e;
		}
		return result;
	}

	
	public boolean updateData(String sql,  Object[] params) {
		try {
			
			statement = jdbc.prepareStatement(sql);
			for (int i = 0; i < params.length; i++) {
				statement.setObject(i + 1, params[i]);
			}
			statement.execute();
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
			if (jdbc != null) {
				C3p0Utils.releaseConnection(jdbc);
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}
	
	
	
}
