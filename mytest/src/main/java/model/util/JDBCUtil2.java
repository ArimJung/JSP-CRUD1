package model.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class JDBCUtil2 {
	static final String driverName="com.mysql.cj.jdbc.Driver";
	static final String url="jdbc:mysql://localhost:3306/jung";
	static final String user="root";
	static final String passwd="1234";
	public static Connection connect() {
		Connection conn=null;
		try {
			Class.forName(driverName);

			conn=DriverManager.getConnection(url, user, passwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	public static void disconnect(PreparedStatement pstmt,Connection conn) {
		try {
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
