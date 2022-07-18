<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>

<form action="AddProductServlet" method="post">
	title:<input type="text" name="title"><br><br>
	description:<input type="text" name="description">
	<br><br>
	<input type="submit" value="Add Product"><br><br>
	<a href="ListProjectServlet">List Projects</a>
</form>

</body>
</html>