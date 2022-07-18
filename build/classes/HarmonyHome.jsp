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
    .text{
        position: absolute;
        top: 30%;
        left: 20%;
    }
    h1{
        font-size: 70px;
        font-family: barlow condensed,sans-serif;
        text-transform: capitalize;
        width: 460px;
        word-spacing: 0px;
        font-weight: normal;
        line-height: 72px;
        margin-top:78px;
        

    }
    h4{
    	line-height:1px;
    }
    
  
    .btn{
        border: 2px solid crimson;
        background-color: crimson;
        color: white;
        letter-spacing: 1px;
        margin-top: 20px;
        width:100px;
        height:50px;
    }
    .btn :hover{
        background-color: red;
        border: red;
    }
    .active{
        color: red;
    }
    
</style>
<body>

<form action="MainMenuServlet" method="post">
	<div class="box">
	<ol>
	<a href="HarmonyHome.jsp">Home&nbsp;&nbsp; &nbsp;</a>
	<a href="index.html">DashBoard&nbsp;&nbsp; &nbsp;</a>
	<a href="Service.jsp">Service&nbsp;&nbsp; &nbsp;</a>
	<a href="HarmonySignUp2.jsp">SignUp&nbsp;&nbsp; &nbsp;</a>
	</ol>
	
	</div>
	<div class="cover">
              <img src="h1.jpg">
              <div class="text">
                  <h1>Harmony Health</h1>
                  <h4> A CARE THAT NEVER QUIT</h4> 
                 
              </div>
          </div>
	
</form>

</body>
</html>
