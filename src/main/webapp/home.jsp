<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Add Employee</h2>
	<form action="addEmployee">


		<!-- <input type="text" name="eid" /><br> --> 
		<label for="ename">Name:</label><br>

		<input type="text" name="ename" /><br> 
		
		<label for="techicalSkill">Department:</label><br>
		 <input type="text" name="techicalSkill" /><br>
		 
		  <label for="email">Email:</label><br>
         <input type="text" name="email" /><br> 
         
		<label for="location">Location:</label><br>
       <input type="text" name="location" /><br> 
       
		<input type="submit"><br>

	</form>



	<h2>Get EmployeeById</h2>
	<form action="getEmployee">
	<label for="eid">EmployeeId:</label>
		<input type="text" name="eid" /><input type="submit"><br>

	</form>
	<h2>Delete Employee</h2>
	<form action="deleteEmployee">
	<label for="eid">EmployeeId:</label>
		<input type="text" name="eid" /> <input type="submit"><br>

	</form>
	<h2>Update Employee</h2>
	<form action="updateEmployeeDetails">
	<label for="eid">EmployeeId:</label>
		<input type="text" name="eid" /> <input type="submit"><br>

	</form>

</body>
</html>