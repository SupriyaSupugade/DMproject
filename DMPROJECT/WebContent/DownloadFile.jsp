<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*,java.util.*"%>
<%
 String filename="Book.xlsx";
String filepath="C:\\Users\\himesh\\Desktop\\dmfiles\\";
response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");   
response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   

FileInputStream fileInputStream=new FileInputStream(filepath + filename);  
          
int i;   
while ((i=fileInputStream.read()) != -1) {  
  out.write(i);   
}   
fileInputStream.close();   
%>