<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
		if(session.getAttribute("name")==null){
			response.sendRedirect("LoginSign.jsp");
		}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Menu</title>
</head>
<style>

body{
	  background-image: url('blurry-hospital.jpg');
        background-repeat: no-repeat;
        background-size: cover;
}
.box1{
        
        margin-left: 320px;
        font-size: 20px;
        margin-top: 20px;
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
		ol a  {
        float: left;
        left: 50%;
        position: relative;
        font-size: 20px;
        list-style-type: none;
        font-size: 30px;
        padding: 10px;
        color: black;
        padding-bottom: 10px;
        font-family: Arial, Helvetica, sans-serif;
        text-decoration: none;
     }
       ol a:hover {
            color: red;
            text-decoration: none;
     }
     .box{
        
      
        border: 1px solid whitesmoke;
        background-color: whitesmoke;
        height: 65px;
       
    
    }
     .cover img{
        background-color: cover;
        height: 550px;
        width: 1500px;
    }
   
    .active{
        color: red;
    }
    
</style>
<body>

<form action="HarmonySignUpServlet2" method="post">
	<div class="box">
	<ol>
	<a href="HarmonyHome.jsp">Home&nbsp;&nbsp; &nbsp;</a>
	<a href="index.html">DashBoard&nbsp;&nbsp; &nbsp;</a>
	<a href="Service.jsp">Service&nbsp;&nbsp; &nbsp;</a>
	<a href="HarmonySignUp2.jsp">Sign Up&nbsp;&nbsp; &nbsp;</a>
	</ol>
	
	</div>
	
	<div class="box1">


		
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
		<a href="HarmonyLogin.jsp" class="link">Login</a>
		
		

</div>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet href="alert/dist/sweetalert.css">

<script type="text/javascript">

	var status = document.getElementById("status").value;
	if(status == "success"){
		alert("Congratulation your account created successfully...","success");
	}</script>
	
	
</form>

</body>
</html>
