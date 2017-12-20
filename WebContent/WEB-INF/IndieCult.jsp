<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "projectschema";
String userId = "root";
String password = "Truth01!";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h1 align="center"><font><strong>CULT</strong></font></h1>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">

<td><b>Title</b></td>
<td><b>Year</b></td>
<td><b>Description</b></td>
<td><b>Review Link</b></td>
</tr>
<%
try {
	//connection 
	Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectschema","root", "Truth01!");
	Statement myStmt = myConn.createStatement();
    ResultSet myRs = myStmt.executeQuery("select * from culttable");
    //proces result set 
   while(myRs.next()){
%>
<tr bgcolor="#DEB887">

<td><%=myRs.getString("title") %></td>
<td><%=myRs.getString("year") %></td>
<td><%=myRs.getString("about") %></td>
<td><%=myRs.getString("link") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>