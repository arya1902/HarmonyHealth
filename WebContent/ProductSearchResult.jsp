
<%@page import="com.bean.ProjectBean"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "_//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.orh/TR/html4/losse.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Result  Project</title>
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
		ArrayList<ProjectBean> products = (ArrayList<ProjectBean>) request.getAttribute("products");
	
	%>
	
	<br><br>
	<a href="AddProduct.jsp" class="add">Add Product</a> <a href="ListProductServlet" class="add">List products</a>
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
			<th>Product ID</th>
			<th>Product Name</th>
			<th>Price</th>
			<th>Action</th>
			
			</tr>
			
			<%
				for(ProjectBean p: products){
					
				
			%>
			<tr>
					<td><%=p.getProductid()%></td>
					<td><%=p.getPname()%></td>
					<td><%=p.getPrice()%></td>
					<td><a href="DeleteProductServlet?productid=<%=p.getProductid()%>">Delete</a></td>
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