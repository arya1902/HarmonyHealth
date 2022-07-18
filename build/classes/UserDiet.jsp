<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<a href="UserMeasurement.jsp">User_Measurement</a>
<a href="Subscription.jsp">Subscription</a>
<a href="UserSub.jsp">USer_Subscription</a>
<a href="Diet.jsp">Diet</a>
<a href="UserDiet.jsp">User_Diet</a>


<br><br>

isActive:Yes:<input type="radio" name="active" value="yes">
		No:<input type="radio" name="active" value="No"><br><br>
AssignDate:<input type="date" name="adate" value=""><br><br>
RevokeDate:<input type="date" name="rdate" value=""><br><br>

<input type="submit" value="submit">

	
<body>

</body>
</html>