

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
    Logger log = Logger.getAnonymousLogger();
	private String msg;
	
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName,lastName,email,pass,gender,role, phone;
		PrintWriter out = response.getWriter();
	firstName = request.getParameter("fname");
	lastName = request.getParameter("lname");
	email = request.getParameter("email");
	pass = request.getParameter("password1");
	role = request.getParameter("role");
	gender = request.getParameter("gender");
	phone = request.getParameter("Mnum");
	
	String Query="Insert into UserRecord values(?,?,?,?,?,?,?,?)";
	try {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		log.info("Driver Loader");
		Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DataBaseName=niit","sa","123");
		log.info("Connection Created");
		PreparedStatement ps = con.prepareStatement(Query);
		ps.setString(1, firstName);
		ps.setString(2, lastName);
		ps.setString(3, email);
		ps.setString(4, phone);
		ps.setString(5, pass);
		ps.setString(6, gender);
		ps.setString(7, role);
		ps.setString(8, "NA");
		int count = ps.executeUpdate();
		if(count>0) {
			msg = "Conguratulation!!"+firstName+"your request is pending for approval";
			RequestDispatcher rd = request.getRequestDispatcher("loginpage.jsp");
		    rd.forward(request, response);
		}
		else {
			log.info("Fail add operation");
		}
	}catch(SQLException exception) {
		log.info("SQL Error : "+exception);
	}catch(ClassNotFoundException cfe) {
		log.info("Driver Error : "+cfe);
	}catch(Exception exp) {
		log.info(""+exp);
	}
	}

}
