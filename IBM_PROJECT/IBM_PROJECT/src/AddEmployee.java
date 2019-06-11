import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddEmployee")
public class AddEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddEmployee() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
PrintWriter out=response.getWriter();
		
		int EMP_ID=Integer.parseInt(request.getParameter("Employee_id"));
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

		try {
			Class.forName("oracle.jdbc.OracleDriver");
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			String user="hr";
			String password="hr";
			Connection conn;
			conn = DriverManager.getConnection(url,user,password);
			Statement stmt=conn.createStatement();
			
			String q="INSERT INTO EMPLOYEES(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID,PASSORD)"+ 
			"VALUES(EMP_ID,'FN','LN','EMAIL','PNO','HD','JID',SAL,CPCT,MID,DID,PWD)";
			stmt.executeUpdate(q);
			out.println("INSERTED");
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			out.close();
		}
	}

}
