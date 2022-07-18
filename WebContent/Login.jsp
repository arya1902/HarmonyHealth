<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<% 
		String emailError = (String) request.getAttribute("emailError");
		String passwordError = (String) request.getAttribute("passwordError");
		
		String emailValue = (String) request.getAttribute("emailValue");
		String passwordValue = (String) request.getAttribute("passwordValue");
		
		%>
		

	<form action="LoginServlet" method="post"> 
		<br>Email :<input type="text" name="email" 
		value=" <%=emailValue == null ? "" :emailValue %>" />
		<%=emailError == null ?"" :emailError %>
		
		<br><br>Password : <input type="password" name="password"
		value=" <%=passwordValue == null ? "" :passwordValue %>" />
		<%= passwordError == null ?"" : passwordError %><br>
		<br><input type="submit" value="Login" />
		

</form>

</body>
</html>