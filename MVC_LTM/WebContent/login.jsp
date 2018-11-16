<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% session.setAttribute("temp", "temp"); %>
	<p align="center">JSP</p>
	<form name="form_login" method = "POST" action = "checkLogin.jsp">
		<table align = "center">
			<tr>
				<td>User Name</td>
				<td><input type="text" name="edtUserName"></td>
			</tr>

			<tr>
				<td>Password</td>
				<td><input type="password" name="edtPassword"></td>
			</tr>
		</table>
		<p align="center">
			<input type='submit' value='login' /> <input type='reset'
				value='cancel' />
		</p>
	</form>

</body>
</html>