<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
<a href="Subscription.jsp">Subscription</a>
<a href="UserSub.jsp">USer_Subscription</a>
<a href="Diet.jsp">Diet</a>
<a href="UserDiet.jsp">User_Diet</a><br><br>

<form action="UserDetailsServlet" method="post">


FirstName:<input type="text" name="fname"><br><br>
LastName:<input type="text" name="lname"><br><br>
Email:<input type="text" name="mail"><br><br>
Password:<input type="password" name="pwd"><br><br>
Gender :Male <input type="radio" name="gender" value="male">
Female:<input type="radio" name="gender" value="female"><br><br>
PhoneNumber:<input type="text" name="no"><br><br>
BirthDate:<input type="date" name="date"><br><br>
CreatedAt:<input type="text" name="at"><br><br>
IsSubscribed: :Yes:<input type="radio" name="sub" value="yes">
			No:<input type="radio" name="sub" value="no"><br><br>
			
			<input type="submit" value="submit">
			
			</form>
			</body>
			</html> 