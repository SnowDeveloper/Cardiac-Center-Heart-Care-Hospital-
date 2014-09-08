package pkg;

import com.sun.org.apache.xpath.internal.SourceTree;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class form1servlet
 */
@WebServlet("/ReferenceServlet")
public class ReferenceServlet extends HttpServlet {
    /**
     * @see HttpServlet#HttpServlet()
     */

    private String name,appointdate,doctor;

    public ReferenceServlet() {
        super();
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;ISO-8859-1");
        PrintWriter writer = response.getWriter();
        String refno = request.getParameter("_ref");

        boolean validify = validateData(refno);
        if( validify == false)
        {
            writer.write("Something went wrong, Please try again.");
            writer.close();
            return;
        }
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/XE","SNOWWHITE","prakaship");
            String sql = "select pname,appointdate,doctor from appointments where refn=?";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setInt(1, Integer.parseInt(refno));
            int temp=0;
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                name=rs.getString(1);
                appointdate=rs.getString(2);
                doctor=rs.getString(3);
                ++temp;
            }
            con.close();
            if(temp!=0)
                writer.write(name + ";" + appointdate + ";"+ doctor);
            else
                writer.write("Hello");
        } catch (SQLException e) {
            e.printStackTrace();
            writer.write("SQL Error");

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            writer.write("Class not found");
        }
        finally {
            writer.close();
        }
    }

    private boolean validateData(String refno) {
        if(refno.isEmpty())
            return false;
        return true;
    }


}