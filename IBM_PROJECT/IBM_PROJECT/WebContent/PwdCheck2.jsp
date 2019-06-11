<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.sql.*"%>
    <%@page import ="javax.sql.*"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CREDENTIALS CHECKING FOR NEW PASSWORD</title>
</head>
<body>
<%
String s=request.getParameter("Email_Id");
int s1=Integer.parseInt(request.getParameter("Mail_Pwd"));
%>
<%
Class.forName("oracle.jdbc.OracleDriver");
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String password="hr";
Connection conn=DriverManager.getConnection(url,user,password);
Statement stmt=conn.createStatement();

String q="SELECT* FROM employees";
ResultSet rs=stmt.executeQuery(q);
while(rs.next()) {
String dbEmail_Id=rs.getString("Email");
int dbMail_Pwd=rs.getInt("Mail_Pwd");
int dbemp_Id=rs.getInt("Employee_Id");
	if((dbEmail_Id.equals(s))&&(dbMail_Pwd==s1)) {
		RequestDispatcher rd=request.getRequestDispatcher("ForgotPwd3.jsp");
		rd.forward(request, response); 
	}
	} 
%> 
</body>
</html>