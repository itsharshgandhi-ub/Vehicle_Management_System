<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="<%= request.getContextPath() %>/VehicleController">
<input type="hidden" name="source" value="register">
<table>
	<tr><td>First Name: </td><td><input type="text" name="fname"></td></tr>
	<tr><td>Last Name: </td><td><input type="text" name="lname"></td></tr>
	<tr><td>City: </td><td><input type="text" name="city"></td></tr>
	<tr><td>Address: </td><td><input type="text" name="address"></td></tr>
	<tr><td>Phone Number: </td><td><input type="text" name="number"></td></tr>
	
	<tr><td><input type="submit" value="submit"></td></tr>
</table>
</form>
</body>
</html>