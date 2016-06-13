package guitar.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


/**
* 测试
*/
public class test {
public test(String string) {
		// TODO Auto-generated constructor stub
	}

public static void main(String[] args) {

	System.out.println("测试类");
	 //载入数据库驱动
	  try{
	   Class.forName("org.sqlite.JDBC");
	   System.out.println("成功!");
	  }
	  catch(java.lang.ClassNotFoundException e){
	   System.out.println("失败!");
	   System.out.println(e.getMessage());
	  }

	  try{
	   //连接数据库
	   String connectionString = "jdbc:sqlite:./test.db";
	   Connection cn = DriverManager.getConnection(connectionString);
	   
	   //SQL语句类
	   System.out.println("Connect sucessfully!");
	   Statement stmt = cn.createStatement();
	   
	   //创建数据库
	   test testdb = new test("test.db");
	   
	   //创建表
	   stmt.execute("CREATE TABLE test(id integer primary key, name char(10))");
	   //插入数据
	   stmt.execute("INSERT INTO test(id, name) VALUES(1, '张三')");
	   stmt.execute("INSERT INTO test(id, name) VALUES(2, '李四')");
	   //查询
	   ResultSet rs = stmt.executeQuery("SELECT * FROM test");
	   while(rs.next()){
	    String id = rs.getString("id");
	    String name = rs.getString("name");
	    System.out.println("id is " + id + "  name is " + name);
	   }

	   //关闭
	   stmt.close();
	   cn.close();
	  }
	  catch(Exception e){
	   System.out.println("Fail！");
	   System.out.println(e.getMessage());
	  }
}


}