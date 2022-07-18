<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		
<h2>Panjabi Food Menu</h2>

<form action="PanjabiFoodServlet" method="post"> 

	

	Naan-Sabji:210:<input type="checkbox" name="panjabi" value="Naan-Sabji :: 210"><br><br>
	JeeraRise-Daal:240:<input type="checkbox" name="panjabi" value="Jeera-Rise -Daal :: 240"><br><br>
	Panner-Butter-Masala:140:<input type="checkbox" name="panjabi" value="Paneer-Butter-Masala :: 140"><br><br>
	Daal_makhani:240:<input type="checkbox" name="panjabi" value="Daal-Makhni :: 240"><br><br>
	Mater-Paneer:130:<input type="checkbox" name="panjabi" value="Mater-Paneer :: 130"><br><br>
	Paneer-Tikka:130:<input type="checkbox" name="panjabi" value="Paneer-Tikka :: 130"><br><br>
	Kadai-Paneer:200:<input type="checkbox" name="panjabi" value="Kadai-Paneer :: 200"><br><br>
	${pError} 
		<br><input type="submit" value="Submit" />
</form>
</body>
</html>