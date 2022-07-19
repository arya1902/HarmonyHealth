<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<style>
body{
	  background-image: url('p1.jpg');
        background-repeat: no-repeat;
        background-size: cover;
}
.box{
        
        margin-left: 320px;
        font-size: 20px;
        margin-top: 70px;
        background-color:whitesmoke;
        margin-right: 100px;
        margin-left: 500px;
        width: 350px;
        height: 510px;
        color: black;
        padding: 10px;
        
    }
    form{
   			padding-left:20px;
    }

	h1{
		margin-left:100px;
	}
	.txt{
		width: 200px;
        padding: 5px;
        border: 1px solid black;
        
	}
	.btn{
	   width: 100px;
        padding: 10px;
        border: none;
        background-color: rgba(116, 1, 145, 0.514);
        letter-spacing: 2px;
        font-weight: bold;
        color: white;
        margin-left:100px;
        }
        .link{
        	 text-decoration: none;
        }
	


</style>


	

<body>
<div class="box">

<form action="HarmonySignUpServlet" method="post">
		
		<h1>Sign Up</h1><hr>
		<input type="hidden" id="status" value="<%= request.getAttribute("status")%>"><br>
		First Name:<input type="text" name="name" class="text" required="required"><br><br>
		Last Name:<input type="text" name="lname" class="text" required="required"><br><br>
		&nbsp;&nbsp;&nbsp;Email ID:<input type="text" name="email" class="text" required="required"><br><br>
		&nbsp;&nbsp;&nbsp;Patient ID:<input type="text" name="pwd" class="text" required="required"><br><br>
		Mobile No:<input type="text" name="no" class="text" required="required"><br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Address:<input type="text" name="adr" class="text" required="required"><br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pin NO:<input type="text" name="pin" class="text" required="required"><br><br>
		
		<input type="submit" value="Sign Up"class="btn">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="index.jsp" class="link">Login</a>
		
		
</form>
</div>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet href="alert/dist/sweetalert.css">

<script type="text/javascript">

	var status = document.getElementById("status").value;
	if(status == "success"){
		alert("Congratulation your account created successfully...","success");
	}</script>

</body>
</html>