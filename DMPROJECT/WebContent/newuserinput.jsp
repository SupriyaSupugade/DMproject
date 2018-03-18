<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String address=request.getParameter("address");
String email=request.getParameter("email");
int adharno=Integer.parseInt(request.getParameter("adharno"));
char gender=request.getParameter("email").charAt(0);
int age=Integer.parseInt(request.getParameter("age"));
String mobile=(request.getParameter("mobile"));
int salary=Integer.parseInt(request.getParameter("salary"));
String noe=request.getParameter("noe");
int earners=Integer.parseInt(request.getParameter("earners"));
int dependents=Integer.parseInt(request.getParameter("dependents"));

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dmproject", "root", "root");
Statement st=conn.createStatement();
//,adharno,gender,age,mobno,annualsalary,natureofemployment,noofearners,noofdependents
int i=st.executeUpdate("insert into employeeinfo(firstname,lastname,address,adharno,gender,age,mobno,natureofemployment,noofearners,noofdependent,annualsalary)values('"+first_name+"','"+last_name+"','"+address+"','"+adharno+"','"+gender+"','"+age+"','"+mobile+"','"+noe+"','"+earners+"','"+dependents+"','"+salary+ "')");
 		//"','"+gender+"','"+age+"','"+mobile+"','"+salary+","+noe+"','"+earners+"','"+dependents+
// 		"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>