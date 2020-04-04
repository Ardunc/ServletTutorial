<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.user.Student" %>
<%@ page import="com.Servlet.Course" %>
<%@ page import="java.util.ArrayList" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4VA+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="./styles/styles.css">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang = "en">
<head>
<meta charset="ISO-8859-1">
<title>My Course List</title>
</head>
<body>
<table style="width:100%">
<tr>
	<th>Course Name   </th>
	<th>Professor   </th>
	<th>Room Number   </th>
	<th>Start Time   </th>
	<th>Start Date   </th>
	<th>Course Days  </th>
</tr>
<c:forEach var="course" items="${course}">
<tr>
	<td><c:out value="${course.courseName}"/></td>

	<td><c:out value="${course.professor}"/></td>

	<td><c:out value="${course.roomNumber}"/></td>

	<td><c:out value="${course.time}"/></td>

	<td><c:out value="${course.startDate}"/></td>

	<td>
	<c:forEach var="weekday" items="${course.occurrences}">
		<c:out value="${weekday}"/>
		<br>
	</c:forEach>
	</td>
</c:forEach>
</tr>
</table>
<a href="account.jsp">
	<button type="submit" class="btn btn-default">Return to Account</button>
</a>

</body>
</html>