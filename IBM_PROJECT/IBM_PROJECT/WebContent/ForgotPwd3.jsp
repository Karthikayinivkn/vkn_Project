<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SETTING NEW PASSWORD</title>
</head>
<body>
<center>
<B><h4>SETTING NEW PASSWORD</B></h4>
</center>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<form class="form" action="PasswordUpdate4.jsp">
			<label for="Employee_Id">Employee_Id: </label><input class="form-control" type="text" id="Employee_Id" name="Employee_Id" autofocus required><br/>
			<label for="NewPassword">NewPassword: </label><input class="form-control" type="text" id="NewPassword" name="New_Password" autofocus required>
			<label for="ConfirmPassword">ConfirmPassword: </label><input class="form-control" type="text" id="ConfirmPassword" name="Confirm_Password" required>
			<br/>
			<input class="form-control btn btn-lg btn-primary" type="submit" value="Submit">
		</form>		
	</div>
</body>
</html>