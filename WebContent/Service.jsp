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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
    integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<style>
body{

	background-image: url('h6.jpg');
        background-repeat: no-repeat;
        background-size: cover;
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
        margin-top:120px;
        

    }
  
    h4{
        position: absolute;
        top:-1%;
        font-size: 18px;
        font-family: barlow condensed,sans-serif;
        
        text-transform: uppercase;
    
        
    }
   
    .btn{
        border: 2px solid rgba(116, 1, 145, 0.514);
        background-color: rgba(116, 1, 145, 0.514);
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
    .card-columns{
         float: left;
         margin-left: 200px;
         margin-top: 60px;
     }
     .card-text{
         font-size: 13px;
     }
     *{
		margin:0px;
		padding:0px;
		box-sizing:border-box;
		
	}
	.popup{
		position :absolute;
		top:-150%;
		left:50%;
		margin-top:640px;	
		opacity:0;
		transform:translate(-50%,-50%) scale(1.25);
		width:500px;
		background:#fff;
		padding:20px 30px;
		box-shadow:2px 2px 5px 5px rgba(0,0,0,0.15);
		border-radious:10px;
		transition:top 0ms ease-in-out 200ms,
					opacity 200ms ease-in-out 0ms,
					transform 200ms ease-in-out 0ms;
	}
	.popup.active{
		top:-50%;
		opacity:1;
		transform:translate(-50%,-50%) scale(1); 
		transition:top 0ms ease-in-out 0ms,
					opacity 200ms ease-in-out 0ms,
					transform 200ms ease-in-out 0ms;
		
	}
	.popup .close-btn{
		position:absolute;
		top:10px;
		right:10px;
		width:15px;
		height:15px;
		background:#888;
		color:#eee;
		line-height:15px;
		border-radius:15px;
		cursor:pointer;
	}
	.popup h2{
		text-align:center;
		color:#222;
		margin:10px 6px 15px;
		font-size:25px;
	}
	.popup .form-element{
		margin:10px 0px;
	}
	.popup .form-element label{
		font-size:14px;
		color:#222;
	}
	.popup .form-element input[type="text"],
	.popup .form-element input[type="date"]{
		margion-top:1px;
		display:block;
		width:100%;
		padding:2px;
		outline:none;
		border:1px solid #aaa;
		border-radius:5px;
	}
	.popup .form-element input[type="checkbox"]{
		margin-right:5px;
	}
	.popup .btn{
		width:100%;
		height:30px;
		border:none;
		outline:none;
		font-size:16px;
		background:#222;
		color:#f5f5f5;
		border-radius:10px;
		cursor:pointer;
	}
	
	 *{
		margin:0px;
		padding:0px;
		box-sizing:border-box;
		
	}
	.popup1{
		position :absolute;
		top:-150%;
		left:50%;
		margin-top:610px;
		opacity:0;
		transform:translate(-50%,-50%) scale(1.25);
		width:450px;
		background:#fff;
		padding:20px 30px;
		box-shadow:2px 2px 5px 5px rgba(0,0,0,0.15);
		border-radious:10px;
		transition:top 0ms ease-in-out 200ms,
					opacity 200ms ease-in-out 0ms,
					transform 200ms ease-in-out 0ms;
	}
	.popup1.active{
		top:-50%;
		opacity:1;
		transform:translate(-50%,-50%) scale(1); 
		transition:top 0ms ease-in-out 0ms,
					opacity 200ms ease-in-out 0ms,
					transform 200ms ease-in-out 0ms;
					
		background:"black";
		
	}
	.popup1 .close-btn{
		position:absolute;
		top:10px;
		right:10px;
		width:15px;
		height:15px;
		background:#888;
		color:#eee;
		line-height:15px;
		border-radius:15px;
		cursor:pointer;
	}
	.popup1 h2{
		text-align:center;
		color:#222;
		margin:10px 6px 15px;
		font-size:25px;
	}
	.popup1 .form-element{
		margin:10px 0px;
	}
	.popup1 .form-element label{
		font-size:14px;
		color:black;
	}
	.popup1 .form-element input[type="text"],
	.popup1 .form-element input[type="date"]{
		margion-top:1px;
		display:block;
		width:100%;
		padding:2px;
		outline:none;
		border:1px solid #aaa;
		border-radius:5px;
	}
	
	.popup1 .btn{
		width:100%;
		height:40px;
		border:none;
		outline:none;
		font-size:16px;
		background:#222;
		color:#f5f5f5;
		border-radius:10px;
		cursor:pointer;
	}
	*{
		margin:0px;
		padding:0px;
		box-sizing:border-box;
		
	}
	.popup2{
		position :absolute;
		top:-150%;
		left:50%;
		margin-top:610px;
		opacity:0;
		transform:translate(-50%,-50%) scale(1.25);
		width:450px;
		background:#fff;
		padding:20px 30px;
		box-shadow:2px 2px 5px 5px rgba(0,0,0,0.15);
		border-radious:10px;
		transition:top 0ms ease-in-out 200ms,
					opacity 200ms ease-in-out 0ms,
					transform 200ms ease-in-out 0ms;
	}
	.popup2.active{
		top:-50%;
		opacity:1;
		transform:translate(-50%,-50%) scale(1); 
		transition:top 0ms ease-in-out 0ms,
					opacity 200ms ease-in-out 0ms,
					transform 200ms ease-in-out 0ms;
					
		background:"black";
		
	}
	.popup2 .close-btn{
		position:absolute;
		top:10px;
		right:10px;
		width:15px;
		height:15px;
		background:#888;
		color:#eee;
		line-height:15px;
		border-radius:15px;
		cursor:pointer;
	}
	.popup2 h2{
		text-align:center;
		color:#222;
		margin:10px 6px 15px;
		font-size:25px;
	}
	.popup2 .form-element{
		margin:10px 0px;
	}
	.popup2 .form-element label{
		font-size:14px;
		color:black;
	}
	.popup2 .form-element input[type="text"],
	.popup2 .form-element input[type="date"]{
		margion-top:1px;
		display:block;
		width:100%;
		padding:2px;
		outline:none;
		border:1px solid #aaa;
		border-radius:5px;
	}
	
	.popup2 .btn{
		width:100%;
		height:40px;
		border:none;
		outline:none;
		font-size:16px;
		background:#222;
		color:#f5f5f5;
		border-radius:10px;
		cursor:pointer;
	}
       
       
    
</style>
<body>


	<div class="box">
	<ol>
	<a href="HarmonyHome.jsp">Home&nbsp;&nbsp; &nbsp;</a>
	<a href="dashboard.html">DashBoard&nbsp;&nbsp; &nbsp;</a>
	<a href="Service.jsp">Service&nbsp;&nbsp; &nbsp;</a>
	<a href="HarmonySignUp2.jsp">SignUp&nbsp;&nbsp; &nbsp;</a>
	</ol>
	
	</div>
	 
	<div class="card-columns">
            <div class="card" style="width: 15rem;">
                <img src="insurance.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">E-Insurance:</h5>
                  <p class="card-text"> LifIsurance is the place where you can claim your 
            health insurance instantly without waiting days of the 
            process. It provides a 24/7 support, payments via 
            online, easy to claim, and ensure you a 14-day guarantee 
            return funds if something went wrong.</p>
                  <a href="#" class="btn btn-primary" id="show-login" >Apply</a>
                </div>
              </div>
              <div class="card" style="width: 15rem;">
                <img src="h2.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Appointment : </h5>
                  <p class="card-text">You can consultation with  doctor
                  and take an Appointment for your check-Up and Medicine and even
                  Video consulting through which you can  also have a virtual consultation with a doctor
                  
                     </p>
                  <a href="#" class="btn btn-primary" id="show-log">Apply</a>
                </div>
              </div>
              <div class="card" style="width: 15rem;">
                <img src="h.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Home-Delivery:</h5>
                  <p class="card-text">Another  features 
                     is the e-Prescription . This 
                    is a concept that allows doctors to generate and send 
                    prescriptions, along with all of the relevant details  You can also 
                    order required medicine and delivered at your doorstep.
                    </p>
                  <a href="#" class="btn btn-primary" style="margin-top: 10px;" id="show">Apply</a>
                </div>
              </div>
        </div>
        
        <form action="HarmonyServiceServlet" method="post">
        <div class="popup">
        	<i class="close-btn">&times;</i>
        	<h2>E-Insurance</h2>
        	<input type="hidden" id="status1" value="<%= request.getAttribute("status1")%>"><br>
        	<div class="form-element">
        		<label for="">Plan::</label>
        		<input type="radio" name="plan" id="plan" value="medicare">
        		<label for="plan">MediCare</label>
        		<input type="radio" name="plan" id="plan" value="medicaid">
        		<label for="plan">MediCaid</label>
        		<input type="radio" name="plan" id="plan" value="group health">
        		<label for="plan">Group Health Plan</label>
        		<input type="radio" name="plan" id="plan" value="others">
        		<label for="plan">Others</label>
        	</div>
        	<div class="form-element">
        		<label for="name">Patient Name:</label>
        		<input type="text" name="name" id="name" placeholder="Enter Name" required="required">
        	</div>
        	<div class="form-element">
        		<label for="address">Patient Address:</label>
        		<input type="text" name="add" id="address" placeholder="Enter Address" required="required">
        	</div>
        	<div class="form-element">
        		<label for="ename">Insurance Name:</label>
        		<input type="text" name="iname" id="Ename" placeholder="Enter Insurance Name" required="required">
        	</div>
        	<div class="form-element">
        		<label for="dob">Patient Birth Date:</label>
        		<input type="date" name="date" id="dob" placeholder="Enter date of Birth" required="required">
        	</div>
        	<div class="form-element">
        		<label for="">Gender::</label>
        		<input type="radio" name="gender" id="gender" value="male">
        		<label for="gender">Male</label>
        			<input type="radio" name="gender" id="gender" value="female">
        		<label for="gender">Female</label>
        	 </div>
        	 <div class="form-element">
        	 	<label for="">Patient Status::</label><br>
        	 	<input type="checkbox" id="status" name="status1" value="single">
        	 	<label for="status">Single</label>
        	 	<input type="checkbox" id="status" name="status1" value="married">
        	 	<label for="status">Married</label>
        	 	<input type="checkbox" id="status" name="status1" value="Employee">
        	 	<label for="status">Employee</label>
        	 	<input type="checkbox" id="status" name="status1" value="student">
        	 	<label for="status">Student</label><br>
        	 	
        	 </div>
        	 <input type="submit" value="Submit" class="btn">
        </div>
        <script>
        	document.querySelector("#show-login").addEventListener("click",function(){
        		document.querySelector(".popup").classList.add("active");
        		
        	});
        	document.querySelector(".popup .close-btn").addEventListener("click",function(){
        		document.querySelector(".popup").classList.remove("active");
        		
        	});
        </script>
        </form>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<link rel="stylesheet href="alert/dist/sweetalert.css">

		<script type="text/javascript">

	var status = document.getElementById("status1").value;
	if(status == "success"){
		alert("Congratulation your account created successfully...","success");
	}</script>
	
	
         <form action="ServiceServlet" method="post">
        <div class="popup1">
        	<i class="close-btn">&times;</i>
        	<h2>Appointment</h2>
        	<input type="hidden" id="status1" value="<%= request.getAttribute("status1")%>"><br>
        	<div class="form-element">
        		<label for="name">Appointment Date:</label>
        		<input type="date" name="adate" id="date" required="required">
        	</div>
        	<div class="form-element">
        		<label for="name">Appointment Time:</label>
        		<input type="text" name="time" id="time" placeholder="Enter time" required="required">
        	</div>
        	<div class="form-element">
        		<label for="name">Patient Name:</label>
        		<input type="text" name="pname" id="name" placeholder="Enter Name" required="required">
        	</div>
        	<div class="form-element">
        		<label for="name">Doctor Name:</label>
        		<input type="text" name="dname" id="dname" placeholder="Enter  Doctor Name" required="required">
        	</div>
        	 <input type="submit" value="Submit" class="btn">
        </div>
       
        <script>
        	document.querySelector("#show-log").addEventListener("click",function(){
        		document.querySelector(".popup1").classList.add("active");
        		
        	});
        	document.querySelector(".popup1 .close-btn").addEventListener("click",function(){
        		document.querySelector(".popup1").classList.remove("active");
        		
        	});
        </script>
        </form>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet href="alert/dist/sweetalert.css">

		<script type="text/javascript">

	var status = document.getElementById("status1").value;
	if(status == "success"){
		alert("Congratulation your account created successfully...","success");
	}</script>
	
	
         <form action="DeliveryServlet" method="post">
        <div class="popup2">
        	<i class="close-btn">&times;</i>
        	<h2>Home Delivery</h2>
        	<div class="form-element">
        	<label for="name">Patient Name:</label>
        	<input type="text" name="name" id="name" placeholder="Enter Name" required="required">
        	</div>
        	
        	<div class="form-element">
        	<label for="name">Patient Address:</label> 
        	<input type="text" name="add" id="add" placeholder="Enter Address" required="required">
        	</div>
        	
        	<div class="form-element">
        	<label for="name">Medicine:</label>
        	<input type="text" name="medicine" id="name" placeholder="Enter Medicine" required="required">
        	</div>
        	<input type="submit" value="submit" class="btn">
        </div>
        
         <script>
        	document.querySelector("#show").addEventListener("click",function(){
        		document.querySelector(".popup2").classList.add("active");
        		
        	});
        	document.querySelector(".popup2 .close-btn").addEventListener("click",function(){
        		document.querySelector(".popup2").classList.remove("active");
        		
        	});
        	</script>
        	
			</form>
	

</body>
</html>
