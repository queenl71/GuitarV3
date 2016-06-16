package util_connection;
import java.sql.*;

public class DbConn {
	static final String SqliteDBDRIVER = "org.sqlite.JDBC";
	static final String MysqlDBDRIVER = "com.mysql.jdbc.Driver";
	static final String SqliteDBURL = "jdbc:sqlite:db/guitar.db";	  
	//连接sqlite数据库
	
	static final String MysqlDBURL = "jdbc:mysql://localhost:3306/test?characterEncoding=UTF-8";
	 /*** 数据库连接字符串 */  
	static final String DBUSER = "root";
	static final String DBPASSWORD = "123456";
	//连接mysql数据库
	
	static Connection conn=null;
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

	
	
	
	



	public static Connection getconn() {
		// TODO Auto-generated method stub
		return null;
	}
}
	

	
	