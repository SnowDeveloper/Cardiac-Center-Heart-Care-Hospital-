package pkg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oracle.jdbc.OracleDriver;

/**
 * Servlet implementation class ContactForm
 */
@WebServlet("/ContactForm")
public class ContactForm extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactForm() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.setContentType("text/html;ISO-8859-1");
        PrintWriter writer = response.getWriter();

        String eml = request.getParameter("_email");
        String nm = request.getParameter("_name");
        String sub = request.getParameter("_subject");
        String msg = request.getParameter("_message");

        boolean validify = validateData(eml, nm, sub,msg);
        if (validify == false) {
            writer.write("Something went wrong, Please try again.");
            writer.close();
            return;
        }

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/XE", "SNOWWHITE", "prakaship");
            String sql = "insert into contactus (email,name,subject,message) values (?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, eml);
            ps.setString(2, nm);
            ps.setString(3, sub);
            ps.setString(4, msg);

            int result = ps.executeUpdate();

            if (result > 0) {
                con.commit();
                writer.write("Thank You! We will get in touch.");
            } else
                writer.write("Failed, Please try again");

            ps.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
            writer.write("SQL Error");

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            writer.write("Class not found");
        } finally {
            writer.close();
        }
    }
    private boolean validateData(String eml, String nm, String sub, String msg) {
        if(eml.isEmpty() || nm.isEmpty() || sub.isEmpty() || msg.isEmpty())
            return false;
        if(nm.length()>50 || eml.length()>50 || sub.length()>50 || msg.length()>100)
            return false;
        if(!eml.contains("@") || !eml.contains("."))
            return false;
        return true;
    }
}
