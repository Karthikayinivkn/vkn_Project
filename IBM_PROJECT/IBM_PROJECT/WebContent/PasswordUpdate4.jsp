<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("oracle.jdbc.OracleDriver");
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String password="hr";
Connection conn=DriverManager.getConnection(url,user,password);	
Statement stmt=conn.createStatement();

int Emp_Id=Integer.parseInt(request.getParameter("Employee_Id"));
int s=Integer.parseInt(request.getParameter("New_Password"));
int s1=Integer.parseInt(request.getParameter("Confirm_Password"));

stmt.executeUpdate("UPDATE EMPLOYEES SET PASSWORD="+s+"WHERE EMPLOYEE_ID="+Emp_Id);
%>
<table align="center" bgcolor="lightgreen">
<tr>
<th>NEW PASSWORD UPDATED!!</th>
</tr>
</table>
</body>
</html>