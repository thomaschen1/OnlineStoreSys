package cn.thomaschen.base;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBMangerBean {
	private Connection dbcon;
	//�������ݿ�
	private PreparedStatement statement = null;
	//��������;
	private ResultSet result = null;
	//�����

	public DBMangerBean() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			//������������ַ���������������ӿڵ�Class����
			//ע�����ݿ�����
			dbcon = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinestore?serverTimezone=UTC&characterEncoding=utf-8&useSSL=false", "root", "ps19980114");
			////�������ݿ�����Ҫ����Ϣ
			//��ȡ���ݿ�����
		} catch (ClassNotFoundException e) {
			System.out.println("δ�������ݿ�������!");
			System.out.println(e.toString());
		} catch (Exception e) {
			System.out.println("�����쳣!");
			System.out.println(e.toString());
		}
	}

	public ResultSet getData(String sql, Object[] parms) throws SQLException {
		try {
			statement = dbcon.prepareStatement(sql);//���д�������
			for (int i = 0; i < parms.length; i++) {
				statement.setObject(i + 1, parms[i]);
			}
			result = statement.executeQuery();//���ؽ��
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
			statement.execute();//���ز���ֵ������ִ�и�SQL����Ƿ񷵻���ResultSet
			
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
