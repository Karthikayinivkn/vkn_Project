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

String EMP_ID=request.getParameter("Employee_Id");
String  Edit=request.getParameter("Field To Edit");
String Value=request.getParameter("Value To Field");
//int v=Integer.parseInt(Value);

if(Edit.equalsIgnoreCase("Salary"))
{
	stmt.executeUpdate("UPDATE EMPLOYEES SET SALARY="+Value+"WHERE EMPLOYEE_ID="+EMP_ID);
}
else if(Edit.equalsIgnoreCase("Phone_Number"))
{
	stmt.executeUpdate("UPDATE EMPLOYEES SET PHONE_NUMBER="+Value+"WHERE EMPLOYEE_ID="+EMP_ID);
} 
else if(Edit.equalsIgnoreCase("Commission_Pct")){
	double v=Double.parseDouble(Value);
	stmt.executeUpdate("UPDATE EMPLOYEES SET COMMISSION_PCT="+v+"WHERE EMPLOYEE_ID="+EMP_ID);
}
%>

<table align="center" bgcolor="lightgreen">
<tr>
<th>EMPLOYEE DETAILS UPDATED!!</th>
</tr>
</table>
</body>
</html>