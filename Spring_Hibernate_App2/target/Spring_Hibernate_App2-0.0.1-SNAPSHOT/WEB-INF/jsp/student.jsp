<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/jsp/includes.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management System</title>
</head>
<body>
<h1>Students Data</h1>
	<form:form action="student.do" method="POST" commandName="student">
		<table>
			<tr>
				<td>Student ID</td>
				<td><form:input path="studentId"/></td>
			</tr>
			
			<tr>
				<td>First Name</td>
				<td><form:input path="firstname"/></td>
			</tr>
			
			<tr>
				<td>Last Name</td>
				<td><form:input path="lastname"/></td>
			</tr>
			
			<tr>
				<td>Year Level</td>
				<td><form:input path="yearLevel"/></td>
			</tr>
			
			<tr>
				<td colspan="2">
					<input type="submit" name="action" value="Add" />
					<input type="submit" name="action" value="Edit" />
					<input type="submit" name="action" value="Delete" />
					<input type="submit" name="action" value="Search" />
				</td>
			</tr>
			
		</table>
	</form:form>
	<br>
	<table border="1">
		<th>ID</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Year level</th>
		<c:forEach items="${studentList}" var="student"> 
			<tr>
				<td>${student.studentId}</td>
				<td>${student.firstname}</td>
				<td>${student.lastname}</td>
				<td>${student.yearLevel}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>