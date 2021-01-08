<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="javax.sql.*,javax.naming.*" %>
<%@ page import="java.sql.Connection"%>
<%
	Context ctx = new InitialContext();
	DataSource ds=(DataSource)ctx.lookup("java:comp/env/jdbc/xe");
	Connection con = ds.getConnection();
	out.println("DBCP 연결성공!");
%>