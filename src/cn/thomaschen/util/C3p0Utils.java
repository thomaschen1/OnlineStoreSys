package cn.thomaschen.util;

import java.sql.Connection;
import java.sql.SQLException;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class C3p0Utils {
	public static void releaseConnection(Connection connection) {
		try {
			if (connection != null) {
				connection.close();
			}
		} catch (Exception e) {
			System.out.println("¡¨Ω”πÿ±’ ß∞‹");
			e.printStackTrace();
		}
	}

	private static ComboPooledDataSource dataSource = null;
	static {
		dataSource = new ComboPooledDataSource();
	}

	public static Connection getConnection() throws SQLException {
		return (Connection) dataSource.getConnection();
	}
}
