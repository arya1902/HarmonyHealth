<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill</title>
</head>
<body>
		<h2>Bill...</h2>
		
		<%
			String guj[] = request.getParameterValues("guj");
			int total=0;
			double gst,t;
		
			
		%>
		<%
			
			for(int i=0;i<guj.length;i++){
				%>
				<%= guj[i] %><br><br>
				<% 
			}
			%>
			<%
				for(int i=0;i<guj.length;i++){
					if(guj[i].equals("Roti-Sabji :: 110"))
						total = total +110;
					if(	guj[i].equals("Odo :: 250"))
						total = total +250;
					if(guj[i].equals("SevTomato :: 120"))
						total = total +120;
					if(guj[i].equals("Daal-Rise :: 250")) 
						total = total +250;
					if(guj[i].equals("Khaman :: 150")) 
						total = total +150;
					if(guj[i].equals("Khichdi :: 100")) 
						total = total +100;
					if(guj[i].equals("Undhiyu :: 200"))
						total = total+200;
						
					}
					out.print("<br>total :=>" +total);
					gst = total * 0.18;
					out.print("<br>GST :=>" +gst);
					t=total +gst;
					out.print("<br>------------------------");
					out.print("<br>Total Pay ::" +t);
					
				
				%>
			
		
		
		<form action="LoginServlet" method="post">
	
		
		<br><br><input type="submit" value="Done">
		
		</form>
		
</body>
</html>