<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>HR Page</h1>
<h3>Employee list for approval</h3>
<Form action="AtivateAccount" method="post">
<table border="1">
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Phone</th>
<th>Role</th>
<th>Gender</th>
<th>Approve</th>
</tr>
<%
    String query = "select * from UserRecord where status=?";
		try{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DataBaseName=niit","sa","123");
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1,"NA");
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				
			
%>	
      <tr>
          <td><%= rs.getString("FirstName")%></td>
          <td><%= rs.getString("LastName")%></td>
          <td><%= rs.getString("Email")%></td>
          <td><%= rs.getString("Mobile")%></td>
          <td><%= rs.getString("gender")%></td>
          <td><%= rs.getString("role")%></td>
           <td><input type="checkbox" name="st" value="A">
               <input type="submit" value="APPROVE"/>
               </td>
               </tr>
        <%}	}catch(Exception exp){}%>
</table>
</Form>
</body>
</html>