<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Role</title>
</head>
<style>
a{
	color:black;
	text-decoration:none;
	padding:10px;
	font-Size:20px;
	
}
</style>
<body>

<a href="RoleM.jsp">Role</a>
<a href="UserDetails.jsp">User Details</a>
<a href="UserM.jsp">User_Measurement</a>
<a href="Subcription.jsp">Subscription</a>
<a href="UserSub.jsp">USer_Subscription</a>
<a href="Diet.jsp">Diet</a>
<a href="UserDiet.jsp">User_Diet</a>
<br><br><br>

<form  action="RoleServlet" method="post">

	RoleName:<input type="text" name="name"><br><br>
	<input type="submit" value="submit">


</form>

</body>
</html>