<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<h2>Gujrati Food Menu</h2>

<form action="GujFoodServlet" method="post">

	Roti-Sabji:110:<input type="checkbox" name="guj" value="Roti-Sabji :: 110"><br><br>
	Odo:250:<input type="checkbox" name="guj" value="Odo :: 250"><br><br>
	SevTomato:120:<input type="checkbox" name="guj" value="SevTomato :: 120"><br><br>
	Daal-Rise:250:<input type="checkbox" name="guj" value="Daal-Rise :: 250"><br><br>
	Khaman:150:<input type="checkbox" name="guj" value="Khaman :: 150"><br><br>
	Khichdi:100:<input type="checkbox" name="guj" value="Khichdi :: 100"><br><br>
	Undhiyu:200:<input type="checkbox" name="guj" value="Undhiyu :: 200"><br><br>
	${gujError} 
	
		
		<br><input type="submit" value="Submit" />
</form>
</body>
</html>