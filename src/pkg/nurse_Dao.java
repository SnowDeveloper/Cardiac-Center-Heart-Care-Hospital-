package pkg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class nurse_Dao {
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
	public int register(String name,int did,String timing,String info)
	{
		int i=0;
		try{
			Connection con=connect();
			//System.out.println("hello");
			PreparedStatement ps=con.prepareStatement("insert into nurse (name, did, timing, info) values(?, ?, ?, ?)");
			ps.setString(1,name);
			ps.setInt(2,did);
			ps.setString(3,timing);
			ps.setString(4,info);
			i=ps.executeUpdate();
			//System.out.println(i);
		}catch(Exception e){e.printStackTrace();}
		return i;
	}
	public int remove(int did)
	{
		int i=0;
		try{
			Connection con=connect();
			PreparedStatement ps=con.prepareStatement("delete from nurse where did=?");
			ps.setInt(1,did);
			i=ps.executeUpdate();
		}catch(Exception e){e.printStackTrace();}
		return i;
		
	}
	
}
