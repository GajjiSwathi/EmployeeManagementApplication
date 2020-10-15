<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    isELIgnored="false"
    %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>

<h2>Update Details</h2>

 <form:form action = "updateEmployee" method="post" modelAttribute="employee">
  <table>

			<input type = "hidden" name = "eid" value = "${employee.eid}"/>
			<tr>
				<td>Name</td>
				<td><form:input path="ename" value="${employee.ename}"/></td>
			</tr>


			<tr>
				<td>Techical skill</td>
				<td><form:input path="techicalSkill" value="${employee.techicalSkill}"/></td>
			</tr>
			
			

			<tr>
			
				<td>Email</td>
				<td><form:input path="email" value="${employee.email}"/></td>
            </tr>
            
            <tr>
			
				<td>Location</td>
				<td><form:input path="location" value="${employee.location}"/></td>
            </tr>
            
            

			<tr>
				<td><input type="submit" value="Update"></td>
			</tr>
    </table>
  </form:form>
</center>
</body>
</html>