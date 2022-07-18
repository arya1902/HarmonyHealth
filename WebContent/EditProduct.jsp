<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit project</title>
</head>
<style>
.btn{
    	width: 200px;
        padding: 10px;
        border: none;
        background-color: rgba(116, 1, 145, 0.514);
        letter-spacing: 2px;
        font-weight: bold;
        color: white;
        text-decoration:none;
        }
	
</style>
<body>


<form action="UpdateProductServlet">

	Product Name : <input type="text" name="pname" value="${product.pname}" class="txt"><br><br>
	Product Price :<input type="text" name="price" value="${product.price}" class="txt"/><br><br>
	<input type="hidden" name="productid" value="${product.productid}">
	
	<input type="submit" value="Update Project" class="btn">
	
</form>
<br><br>
	<a href="ListProductServlet" class="btn">List Projects</a>

</body>
</html>