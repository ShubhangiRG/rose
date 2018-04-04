package serve;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class testServlet extends HttpServlet{

	protected void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException
	{
		PrintWriter pw = res.getWriter();
		res.setContentType("text/html");
		pw.println("Initializing connction..");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Emp","root","ccoew");
			Statement stmt =conn.createStatement();
			pw.println("Succesfull connection estblshd..");
			ResultSet rs = stmt.executeQuery("select * from sample;");
			String user = req.getParameter("userID");
			String pass = req.getParameter("pass");
			pw.println(user);
			pw.println(pass);
			while(rs.next())
			{
				pw.println(rs.getString(1));
				if(user.equals(rs.getString(1)))
				{
					res.sendRedirect("user.html");
		
				}
				else
				{
					//res.sendRedirect("user.html");
				}
			}
		}
		catch(Exception e)
		{
			pw.close();
		}
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
