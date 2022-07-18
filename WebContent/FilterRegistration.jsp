<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
String firstNameError = (String) request.getAttribute("firstNameError");
String emailError = (String) request.getAttribute("emailError");
String passwordError = (String) request.getAttribute("passwordError");


%>
<form action="FilterRegistrationServlet" method="post">

	
		FirstName : <input type="text" name="firstName">
		<%=firstNameError == null ?"" : firstNameError%>
		
		<br>Email :<input type="text" name="email" >
		<%=emailError == null ?"" :emailError %>
		
		<br>Password : <input type="password" name="password">
		<%= passwordError == null ?"" : passwordError %>
		
		<br><input type="submit" value="SIgnup" />
		
</form>

</body>
</html>