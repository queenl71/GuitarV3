package util_connection;
import java.sql.*;

public interface DbConn {
	static final String SqliteDBDRIVER = "org.sqlite.JDBC";
	static final String MysqlDBDRIVER = "com.mysql.jdbc.Driver";
	static final String SqliteDBURL = "jdbc:sqlite:db/guitar.db";	  
	//连接sqlite数据库
	
	static final String MysqlDBURL = "jdbc:mysql://localhost:3306/test?characterEncoding=UTF-8";  
	static final String DBUSER = "root";
	static final String DBPASSWORD = "123456";
	//连接mysql数据库
	
	private static Connection conn;
	public static  Connection getConnection( String type) throws Exception {

	if (type.equals("sqlite")) {
		System.out.println("sqlite数据库");
			Class.forName(SqliteDBDRIVER);
			conn = DriverManager.getConnection(SqliteDBURL);	
	
	}else if (type.equals("mysql")){
		System.out.println("mysql数据库");
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(MysqlDBURL, DBUSER, DBPASSWORD);	
	}
	return conn;
}

	
	
	
	public default void close() throws Exception {
		if (DbConn.conn != null) {
			try {
				DbConn.conn.close();
			} catch (Exception e) {
				throw e;
			}
		}
	}




	public static Connection getconn() {
		return null;
	}
}
	

	
	