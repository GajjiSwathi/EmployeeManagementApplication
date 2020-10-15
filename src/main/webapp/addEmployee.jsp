<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h2> Employee Added Successfully !! </h2>
<table border="5" cellpadding= '8' > 

<tr>
<th>Name</th>
<th>Value</th>
</tr>

<tr>
<td>Employee ID</td>
<td>${employee.eid}</td>
</tr>

<tr>
<td>Name</td>
<td>${employee.ename}</td>
</tr>

<tr>
<td>Techical Skill</td>
<td>${employee.techicalSkill}</td>
</tr>

<tr>
<td>Email</td>
<td>${employee.email}</td>
</tr>

<tr>
<td>Location</td>
<td>${employee.location}</td>
</tr>


</table>
<br><br>
<form action = "home.jsp">
<input type = "submit" value = "home">
</form>
</center>
</body>
</body>
</html>