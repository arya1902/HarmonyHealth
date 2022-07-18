<%@page import="com.bean.ProjectBean"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "_//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.orh/TR/html4/losse.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Project</title>
</head>

<style>
table{
	width:1200px;
	background-color:whitesmoke;
	margin-top:20px;
}
table th{
	align:center;
}
.add{
	width: 200px;
        padding: 10px;
        border: none;
        background-color: rgba(116, 1, 145, 0.514);
        letter-spacing: 2px;
        font-weight: bold;
        color: white;
        margin-left:50px;
        text-decoration: none;
}
</style>
<body>

	<%
		ArrayList<ProjectBean> projects = (ArrayList<ProjectBean>) request.getAttribute("projects");
	
	%>
	
	<br><br>
	<a href="AddProject.jsp" class="add">Add Product</a>  <a href="SearchProject.jsp" class="add">Search Product</a>
	<br><br>
	
	<%
		if(projects.size() == 0){
	%>
	
	...........No Records Found.....
	<%
		}else{
	%>
	
	
	<table border="1">
	
		<tr>
			<th>Product ID</th>
			<th>Product Name</th>
			<th>Product Price</th>
			<th>Delete</th>
			<th>Edit</th>
			
			</tr>
			
			<%
				for(ProjectBean p: projects){
					
				
			%>
			<tr>
					<td><%=p.getProjectId()%></td>
					<td><%=p.getTitle()%></td>
					<td><%=p.getDescription()%></td>
					<td><a href="DeleteProjectServlet?projectId=<%=p.getProjectId()%>">Delete</a></td>
					<td><a href="EditProjectServlet?projectId=<%=p.getProjectId()%>">Edit</a></td>
			</tr>
			<%
				}
			%>
	</table>
	<%
		}
	%>
</body>
</html>