

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Validate
 */
@WebServlet("/Validate")
public class Validate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Validate() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		String Query="select * from UserRecord where email=? and pass=?";
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DataBaseName=niit","sa","123");
			PreparedStatement ps = con.prepareStatement(Query);
			ps.setString(1, userId);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				if(rs.getString("Role").equals("HR"))
					request.getRequestDispatcher("Approval.jsp").forward(request, response);
				else
					request.getRequestDispatcher("home.jsp").forward(request, response);
			}
			else {
				response.getWriter().println("<h3 style='color:red'>Login failed</h3>");
			}
		}catch(Exception exp) {
			
		}
	}

}
