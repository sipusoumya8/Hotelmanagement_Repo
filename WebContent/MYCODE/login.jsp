<%@page import="java.io.PrintWriter"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
String unm =request.getParameter("name");
String pass =request.getParameter("password");
//String s="1234";
try {
	
	///////////////////
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","7205290903");
	
	
	String q1="Select * from app where unm=? and psw=?";
	PreparedStatement pst;
	pst = con.prepareStatement(q1);
	pst.setString(1, unm);
	pst.setString(2,pass);
	ResultSet rs=pst.executeQuery();
while(rs.next()){
	out.print("{\"name\"=\""+rs.getString(1)+"\",\"password\"=\""+rs.getString(2)+"\",\"email=\""+rs.getString(3)+"\"}");
}
	
	///////////////////
	
	con.close();
	
}
catch(Exception e){e.printStackTrace();}

%>