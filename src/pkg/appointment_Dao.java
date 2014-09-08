package pkg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class appointment_Dao {
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
	
	public int remove(String refn)
	{
		int i=0;
		try{
		Connection con=connect();
		
		PreparedStatement ps=con.prepareStatement("delete from appointments where refn=?");
		ps.setString(1,refn);
		i=ps.executeUpdate();
	}catch(Exception e){e.printStackTrace();}
	return i;
	}
}
