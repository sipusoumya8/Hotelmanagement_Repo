<%@page import="java.io.PrintWriter"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
String s=request.getParameter("myid");
////String s="8";
try {
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","7205290903");
	
	String q="select * from student where sid="+s;
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(q);
	if(!rs.next()){
		out.print("{\"error\": \"flase\" , \"message\" : \"not valid id\"}");
	}
	else{
		String sk=rs.getString(2);
		out.print("{\"error\": \"true\" , \"message\" : \""+sk+"\"}");
	}
	
	con.close();
	
}
catch(Exception e){e.printStackTrace();
out.print("error");}

%>
