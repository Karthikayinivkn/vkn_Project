<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import ="java.sql.*"%>
    <%@page import ="javax.sql.*"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int s=Integer.parseInt(request.getParameter("Emp_id"));
int s1=Integer.parseInt(request.getParameter("password"));
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
int dbempId=rs.getInt("EMPLOYEE_ID");
int dbpwd=rs.getInt("PASSWORD");
	if((dbempId==s)&&(dbpwd==s1)) {
		RequestDispatcher rd=request.getRequestDispatcher("Admin.html");
		rd.forward(request, response); 
	}
	/* else{
		out.println("<center><h2><B>INVALID ADMIN CREDENTIALS<h2><B></center>");
		break;
	} */
	} 

%>
</body>
</html>