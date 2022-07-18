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
<body>

	<%
		ArrayList<ProjectBean> products = (ArrayList<ProjectBean>) request.getAttribute("products");
	
	%>
	
	<br><br>
	<a href="Product.jsp">Add Project</a> | <a href="SearchProduct.jsp">Search Project</a>
	<br><br>
	
	<%
		if(products.size() == 0){
	%>
	
	...........No Records Found.....
	<%
		}else{
	%>
	
	
	<table border="1">
	
		<tr>
			<th>Product Id</th>
			<th>Product Name</th>
			<th>Product Price</th>
			<th>Action</th>
			
			</tr>
			
			<%
				for(ProjectBean p: products){
					
				
			%>
			<tr>
					<td><%=p.getProductid()%></td>
					<td><%=p.getPname()%></td>
					<td><%=p.getPrice()%></td>
					<td><a href="DeleteProductServlet?productid=<%=p.getProductid()%>">Delete</a> |
					<a href="UpdateProductServlet?productid=<%=p.getProductid()%>">Edit</a></td>
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