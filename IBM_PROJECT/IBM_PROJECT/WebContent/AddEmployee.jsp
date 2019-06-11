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
<title>Insert title here</title>
</head>
<body>
<%
int EMP_ID=Integer.parseInt(request.getParameter("Employee_Id"));
String FN=request.getParameter("First_Name");
String LN=request.getParameter("Last_Name");
String EMAIL=request.getParameter("Email");
String PNO=request.getParameter("Phone_Number");
String HD=request.getParameter("Hire_Date");
String JID=request.getParameter("Job_Id");
int SAL=Integer.parseInt(request.getParameter("Salary"));
double CPCT=Double.parseDouble(request.getParameter("Commission_Pct"));
int MID=Integer.parseInt(request.getParameter("Manager_Id"));
int DID=Integer.parseInt(request.getParameter("Department_Id"));
int PWD=Integer.parseInt(request.getParameter("Password"));
int Mail_Pwd=Integer.parseInt(request.getParameter("Mail_Pwd"));
String DEPT=request.getParameter("Department_Name");
%>
<table style="with: 50%">
	<tr><td>
<sql:setDataSource
var="dbconnection"
driver="oracle.jdbc.OracleDriver"
url="jdbc:oracle:thin:@localhost:1521:xe"
user="hr"
password="hr"
/>
<sql:update dataSource="${dbconnection}" var="c">
INSERT INTO EMPLOYEES(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID,PASSWORD,MAIL_PWD,DEPARTMENT_NAME)
VALUES('${param.Employee_Id}','${param.First_Name}','${param.Last_Name }','${param.Email}','${param.Phone_Number}','${param.Hire_Date}','${param.Job_Id}','${param.Salary}','${param.Commission_Pct}','${param.Manager_Id}','${param.Department_Id}','${param.Password}','${param.Mail_Pwd}','${param.DEPT}')
</sql:update>
</td></tr>
</table>
<center>
<table align="center" bgcolor="lightgreen">
<tr>
<th>INSERTED!!</th>
</tr>
</table>
</center>
</body>
</html>