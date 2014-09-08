package pkg;

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
@WebServlet("/form1servlet")
public class form1servlet extends HttpServlet {
    private static final long serialVersionUID = 1L;


    /**
     * @see HttpServlet#HttpServlet()
     */
    public form1servlet() {
        super();
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;ISO-8859-1");
        PrintWriter writer = response.getWriter();

        String eml = request.getParameter("_email");
        String nm = request.getParameter("_name");
        String ag = request.getParameter("_age");
        String no = request.getParameter("_phonenum");
        String dt = request.getParameter("_appointdate");
        String add = request.getParameter("_addr");
        String doc = request.getParameter("_doc");

        boolean validify = validateData(nm,eml,no,add,dt,doc,ag);
        if( validify == false)
        {
            writer.write("Something went wrong, Please try again.");
            writer.close();
            return;
        }

        Random rand = new Random();
        int referNum = rand.nextInt((90000 - 10000) + 1) + 10000;
        String rf = Integer.toString(referNum+1337);

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/XE","SNOWWHITE","prakaship");
            String sql = "insert into appointments (pname,email,phonenum,addr,appointdate,doctor,age, refn) values (?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, nm);
            ps.setString(2, eml);
            ps.setString(3, no);
            ps.setString(4, add);
            ps.setString(5, dt);
            ps.setString(6, doc);
            ps.setString(7, ag);
            ps.setString(8, rf);

            int result = ps.executeUpdate();

            if(result>0)
            {
                con.commit();
                writer.write("Your reference number is: "+rf);
            }
            else
                writer.write("Failed, Please try again");

            ps.close();
            con.close();
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

    private boolean validateData(String nm, String eml, String no, String add, String dt, String doc, String ag) {
        if(nm.isEmpty() || eml.isEmpty() || no.isEmpty() || add.isEmpty() || dt.isEmpty() || doc.isEmpty() || ag.isEmpty())
            return false;
        if(nm.length()>50 || eml.length()>50 || dt.length()>50 || doc.length()>50 || !isNumber(ag) || !isNumber(no))
            return false;
        if(!eml.contains("@") || !eml.contains("."))
            return false;
        return true;
    }

    public static boolean isNumber(String number)
    {
        try {
            Long.parseLong(number);
        }
        catch (NumberFormatException ex)
        {
            return false;
        }
        return true;
    }

}