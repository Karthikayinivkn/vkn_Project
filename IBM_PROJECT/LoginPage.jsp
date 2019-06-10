<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<form class="form" action="Login.jsp">
			<label for="Employee_id">Employee_id: </label><input class="form-control" type="text" id="Emp_id" name="Emp_id" autofocus required>
			<label for="Password">Password: </label><input class="form-control" type="text" id="password" name="password" required>
			<br/>
			<input class="form-control btn btn-lg btn-primary" type="submit" value="Login"></br><br/>
			<input type="button" name="forgot password" value="forgot password?">
			<button class="btn" style="float:right">Signup</button>
			
		</form>		
	</div>
</body>
</html>