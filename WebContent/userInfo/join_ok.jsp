<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String uiName = request.getParameter("uiName");
String uiAge = request.getParameter("uiAge");
String uiId = request.getParameter("uiId");
String uiEtc = request.getParameter("uiEtc");

Connection con;
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "osfu";
String password = "12345678";
Class.forName("oracle.jdbc.OracleDriver");
con = DriverManager.getConnection(url,user,password);
String sql = "insert into user(ui_num,ui_name,ui_age,ui_id,ui_etc)";
sql += " values((nvl((select max(ui_num) from user_info),0)+1))";
%>