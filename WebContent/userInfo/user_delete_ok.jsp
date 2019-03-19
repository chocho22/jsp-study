<%@page import="test.jsp.study.db.DBCon"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String[] uiNums = request.getParameterValues("ui_num");
String sql = "delete from user_info where ui_num=? ";
PreparedStatement ps = DBCon.getCon().prepareStatement(sql);
%>