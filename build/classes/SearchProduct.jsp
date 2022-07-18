<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search project</title>
</head>
<style>
.add{
	width: 200px;
        padding: 10px;
        border: none;
        background-color: rgba(116, 1, 145, 0.514);
        letter-spacing: 2px;
        font-weight: bold;
        color: white;
        
        text-decoration: none;
}
 .txt{
    	
    	padding:10px;
    }
</style>
<body>

	<form action="SearchProductServlet">
	
		<h1>Search :</h1> <input type="text" name="searchName" class="txt" />
		<br><br>
		<input type="submit" value="Search Product"  class="add"/>
	

</form>

</body>
</html>