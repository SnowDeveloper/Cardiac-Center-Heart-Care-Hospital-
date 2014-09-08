package pkg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class article_Dao {
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String dbuser="snowwhite";
	String dbpass="prakaship";

	public Connection connect()
	{
		Connection con=null;
		try{
			Class.forName(driver);
			con=DriverManager.getConnection(url,dbuser,dbpass);
		}catch(Exception e){e.printStackTrace();}
		return con;
	}
	public int post(String date1,String title,String content)
	{
		int i=0;
		try{
			Connection con=connect();
			//System.out.println("hello");
			java.util.Date dt = new java.util.Date ();
			
			int day = dt.getDate ();
			int mon = dt.getMonth ();
			int year = dt.getYear ();
			
			date1 = day + "/" + (mon + 1) + "/" + (year + 1900);
			PreparedStatement ps=con.prepareStatement("insert into article values(?, ?, ?)");
			ps.setString(1,date1);
			ps.setString(2,title);
			ps.setString(3,content);
			i=ps.executeUpdate();
			//System.out.println(i);
		}catch(Exception e){e.printStackTrace();}
		return i;
	}
	public int remove(String date1)
	{
		int i=0;
		try{
		Connection con=connect();
		
		PreparedStatement ps=con.prepareStatement("delete from article where date1=?");
		ps.setString(1,date1);
		i=ps.executeUpdate();
	}catch(Exception e){e.printStackTrace();}
	return i;
	}
}
