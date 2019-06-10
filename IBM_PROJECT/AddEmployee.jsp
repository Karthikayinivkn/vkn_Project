<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.sql.*"%>
    <%@page import ="javax.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table style="with: 50%">
	<tr><td>
<%
int EMP_ID=Integer.parseInt(request.getParameter("Employee_Id"));
String FN=request.getParameter("First_Name");
String LN=request.getParameter("Last_Name");
String EMAIL=request.getParameter("Email");
String PNO=request.getParameter("Phone_Number");
String HD=request.getParameter("Hire_Date");
String JID=request.getParameter("Job_Id");
int SAL=Integer.parseInt(request.getParameter("Salary"));
int CPCT=Integer.parseInt(request.getParameter("Commission_Pct"));
int MID=Integer.parseInt(request.getParameter("Manager_Id"));
int DID=Integer.parseInt(request.getParameter("Department_Id"));
int PWD=Integer.parseInt(request.getParameter("Password"));

%>
<%=MID %>
<%
Class.forName("oracle.jdbc.OracleDriver");
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String password="hr";
Connection conn=DriverManager.getConnection(url,user,password);
Statement stmt=conn.createStatement();

String q="INSERT INTO EMPLOYEES(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID,PASSORD) VALUES(' '+EMP_ID+' ',' '+FN+' ',' '+LN+' ',' '+EMAIL+' ',' '+PNO+' ',HD+' ',' '+JID+' ',' '+SAL+' ',CPCT+' ',' '+MID+' ',' '+DID+' ',' '+PWD+' ')";
stmt.executeUpdate(q);
out.println("INSERTED");
conn.close();
%>
</td></tr>
</table>
</body>
</html>