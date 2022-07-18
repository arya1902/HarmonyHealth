<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
	*{
		margin:0px;
		padding:0px;
		box-sizing:border-box;
		
	}
	.popup{
		position :absolute;
		top:-150%;
		left:50%;
		opacity:0;
		transform:translate(-50%,-50%);
		width:400px;
		padding:20px 30px;
		box-shadow:2px 2px 5px 5px rgba(0,0,0,0.15);
		border-radious:10px;
		transition:top 0ms ease-in-out 200ms,
					opacity 200ms ease-in-out 0ms,
					transform 20ms ease-in-out 0ms,
	}
	.popup.active{
		top:-50%;
		opacity:1;
		transform:translate(-50%,-50%) scale(1); 
		transition:top 0ms ease-in-out 0ms,
					opacity 200ms ease-in-out 0ms,
					transform 20ms ease-in-out 0ms,
		
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
		margin:10px 6px 20px;
		font-size:25px;
	}
	.popup .form-element{
		margin:15px 0px;
	}
	.popup .form-element label{
		font-size:14px;
		color:#222;
	}
	.popup .form-element input[type="text"],
	.popup .form-element input[type="date"]{
		margion-top:5px;
		display:block;
		width:100%;
		padding:10px;
		outline:none;
		border:1px solid #aaa;
		border-radius:5px;
	}
	.popup .form-element input[type="checkbox"]{
		margin-right:5px;
	}
	.popup .btn{
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
<form  action="HarmonyInsuranceServlet" method="post">
	
	<div class="popup">
        	<i class="close-btn">&times;</i>
        	<h2>E-Insurance</h2>
        	<div class="form-element">
        		<label for="">Plan::</label><br>
        		<input type="radio" name="plan" id="plan">
        		<label for="plan">MediCare</label><br>
        		<input type="radio" name="plan" id="plan">
        		<label for="plan">MediCaid</label><br>
        		<input type="radio" name="plan" id="plan">
        		<label for="plan">Group Health Plan</label><br>
        		<input type="radio" name="plan" id="plan">
        		<label for="plan">Others</label><br>
        	</div>
        	<div class="form-element">
        		<label for="name">Pateint Name:</label>
        		<input type="text" name="name" id="name" placeholder="Enter Name">
        	</div>
        	<div class="form-element">
        		<label for="address">Pateint Address:</label>
        		<input type="text" name="add" id="address" placeholder="Enter Address">
        	</div>
        	<div class="form-element">
        		<label for="ename">Ensurance Name:</label>
        		<input type="text" name="add" id="Ename" placeholder="Enter Insurance Name">
        	</div>
        	<div class="form-element">
        		<label for="dob">Pateint Birth Date:</label>
        		<input type="date" name="add" id="dob" placeholder="Enter date of Birth">
        	</div>
        	<div class="form-element">
        		<label for="">Gender::</label>
        		<input type="radio" name="gender" id="gender">
        		<label for="gender">Male</label>
        			<input type="radio" name="gender" id="gender">
        		<label for="gender">Female</label><br>
        	 </div>
        	 <div class="form-element">
        	 	<label for="">Patient Status::</label><br>
        	 	<input type="checkbox" id="status">
        	 	<label for="status">Single</label><br>
        	 	<input type="checkbox" id="status">
        	 	<label for="status">Married</label><br>
        	 	<input type="checkbox" id="status">
        	 	<label for="status">Employeed</label><br>
        	 	<input type="checkbox" id="status">
        	 	<label for="status">Studnet</label><br>
        	 	
        	 </div>
        	 <input type="submit" value="Submit" class="btn">
        </div>
</form>
</body>
</html>