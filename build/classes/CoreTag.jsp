<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CoreTagDemo</title>
</head>
<body>
	<c:set var="x" value="10"></c:set>
	<c:out value="${x}"></c:out><br>
	
	<c:if test="${ x==10}">
		x is 10
	</c:if><br>
	<c:if test="${x%2==0 }">
	EVEN
	</c:if><br>
	<c:if test="${x%2!=0}">
		x is not even
	</c:if>
	
	<c:choose>
	<c:when test="${x==1}">
	case 1:
	</c:when>
	<c:when test="${x==2}">
		case 2:
	</c:when>
	
	<c:when test="${x==10}">
		case 10:
	</c:when>
	<c:otherwise>
	defult
	
	</c:otherwise>
	</c:choose>
	
	<br>
	<c:forEach var="i" begin="1" end="10" step="2">
		<c:out value="${i}"></c:out>, 
	</c:forEach>
	<br>
	
	<c:forEach items="${users}" var="u">
		${u.firstName}<br>
	</c:forEach>
	
	<c:set var="name" value="sun,mon,tue"></c:set>
	<c:forTokens items="${name}" delims="," var="x">
		<c:out value="${x}"></c:out>
		<br>
	</c:forTokens>


</body>
</html>