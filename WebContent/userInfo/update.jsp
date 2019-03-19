<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
img{
	height: 255px;
	width: 255px;
}
</style>

</head>
<body>
<%
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "osfu";
String pwd = "12345678";
Connection con = DriverManager.getConnection(url,user,pwd);
String name = "김선민";
String id = "ksmsm123";
String sql = "update users set id= ? where name=?";
PreparedStatement ps =con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2,name);
int cnt = ps.executeUpdate();
String result = "실패";
if(cnt==1){
	result="성공";
}

con.close();
%>
---------------------------------------<br>
과연 ~! ? 업데이트 결과는 ?? : <%= result%><br>

---------------------------------------<br>
<img src="/jsp-study/img/b.jpg">

</body>
</html>