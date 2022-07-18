<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Bill...</h2>

<%
	String panjabi[] = request.getParameterValues("panjabi");
	int total=0;
	double gst,t;

	
%>

<%
	for(int i=0;i<panjabi.length;i++){
		%>
		<%= panjabi[i] %><br><br>
		<% 
	}
	%>
	<%
		for(int i=0;i<panjabi.length;i++){
			if(panjabi[i].equals("Naan-Sabji :: 210"))
				total = total +210;
			if(	panjabi[i].equals("Jeera-Rise -Daal :: 240"))
				total = total +240;
			if(panjabi[i].equals("Paneer-Butter-Masala :: 140"))
				total = total +140;
			if(panjabi[i].equals("Daal-Makhni :: 240")) 
				total = total +240;
			if(panjabi[i].equals("Mater-Paneer :: 130")) 
				total = total +130;
			if(panjabi[i].equals("Paneer-Tikka :: 130")) 
				total = total +130;
			if(panjabi[i].equals("Kadai-Paneer :: 200"))
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