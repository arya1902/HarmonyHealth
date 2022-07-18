<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cookie </title>
</head>
<body>

<form  action="AddCookieServlet"  method="post">

	Cookie Name:<input type="text" name="name" >${nameError}
	${nameValue}<br><br>
	Cookie Value<input type="text" name="value" >${valueError}
	${valueValue}	
	<br><br>
	
	<input type="submit" value="Submit"><br><br>
	
	<a href="PrintAllCookieServlet">Print All Cookie</a>
</form>
	
</body>
</html>