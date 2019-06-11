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
<form class="form" action="UpdateField.jsp">
<label for="Employee_Id">Employee_Id</label><input class="form-control" type="text" id="Employee_Id" name="Employee_Id" autofocus required><br/>
<label for="Field To Edit">Field To Edit</label><input class="form-control" type="text" id="Field To Edit" name="Field To Edit" autofocus required><br/>
<label for="Value To Field">Value To Field </label><input class="form-control" type="text" id="Value To Field" name="Value To Field" required>
<br/>
<input type="button" name="Done" onclick="window.location.href='UpdateField.jsp'" value="Done">

</form>	
</div>
</body>
</html>
