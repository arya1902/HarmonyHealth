<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
</head>
<body>

	<h2>Menu</h2>
	
	<%
		String menuError = (String)request.getAttribute("menuError");
		
		String menuValue = (String)request.getAttribute("menuValue");
	%>
	
	<form action="FoodMenuServlet" method="post">
	<a href="Guj.jsp" name="guj">Gujrati</a><br>
	<a href="Panjabi.jsp" name="panjabi">Panjabi</a>
	</form>

</body>
</html>