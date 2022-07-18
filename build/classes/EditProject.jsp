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


<form action="UpdateProjectServlet">

	Product Name : <input type="text" name="title" value="${project.title}" class="txt"><br><br>
	Product Price :<input type="text" name="description" value"${project.description}" class="txt"/><br><br>
	<input type="hidden" name="projectId" value="${project.projectId}">
	
	<input type="submit" value="Update Project" class="btn">
	
</form>
<br><br>
	<a href="ListProjectServlet" class="btn">List Projects</a>

</body>
</html>