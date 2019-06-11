<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PASSWORD RECOVERY PAGE</title>
</head>
<body>
<center>
<B><h4>PASSWORD RECOVERY PAGE</B></h4>
</center>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<form class="form" action="PwdCheck2.jsp">
			<label for="Email_Id">Email_Id: </label><input class="form-control" type="text" id="Email_Id" name="Email_Id" required><br/>
			<label for="Mail_Pwd">Mail_pwd: </label><input class="form-control" type="text" id="Mail_Pwd" name="Mail_Pwd" required><br/>
			<input class="form-control btn btn-lg btn-primary" type="submit" value="Done"></br><br/>
		</form>		
	</div>
</body>
</html>