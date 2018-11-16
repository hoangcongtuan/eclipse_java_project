<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String userName = request.getParameter("edtUserName");
		String password = request.getParameter("edtPassword");
		
		String conUrl = "jdbc:mysql://localhost:3306/mydb";
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection connetion = DriverManager.getConnection(conUrl, "root", "123456789");
		
		Statement stm = connetion.createStatement();
		ResultSet rs = stm.executeQuery(
				"select * from users where user_name ='" + userName + "' and password ='" + password + "';");
		if (!rs.next())
			response.sendRedirect("login.jsp");
		else { %>
		<jsp:forward page="welcome.jsp" />
		<%} %>
</body>
</html>