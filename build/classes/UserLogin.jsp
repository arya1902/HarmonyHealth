<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login </title>
</head>
<style>
body{
	  background-image: url('6.jpg');
        background-repeat: no-repeat;
        background-size: cover;
}
.box{
        
        margin-left: 320px;
        font-size: 20px;
        margin-top: 80px;
        background-color:whitesmoke;
        margin-right: 100px;
        margin-left: 500px;
        width: 350px;
        height: 400px;
        color: black;
        padding: 10px;
        
    }
form{
		
		padding-left:20px;
		
	
	}
	h1{
		margin-left:100px;
		padding-bottom:5px;
	}
	.txt{
		width: 200px;
        padding: 5px;
        border: 1px solid black;
        
	}
	.btn{
	   width: 200px;
        padding: 10px;
        border: none;
        background-color: rgba(116, 1, 145, 0.514);
        letter-spacing: 2px;
        font-weight: bold;
        color: white;
        margin-left:50px;
        }
        a{
        	text-decoration:none;
        }
	

</style>


<body>

<div class="box">
<form action="UserLoginServlet" method="post">

	<h1>Login</h1><hr><br>
	<input type="hidden" id="status" value="<%= request.getAttribute("status")%>"><br>
	UserName:<input type="text" name="name" placeholder="Enter name" class="txt" required="required"><br><br>
	&nbsp;&nbsp;Password:<input type="password" name="pwd" placeholder="Enter password" class="txt" required="required"><br><br>
	
	<input type="submit" value="Login" class="btn"><br><br>  
	Don't Have an Account?&nbsp;&nbsp;&nbsp;&nbsp;<a href="LoginSign.jsp">Sign Up</a><br>
	
</form>
</div>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet href="alert/dist/sweetalert.css">

<script type="text/javascript">

	var status = document.getElementById("status").value;
	if(status == "failed"){
		alert("Sorry  Wrong username and password.. Please Sign Up","failed");
	}
	
	</script>





</body>
</html>
</html>