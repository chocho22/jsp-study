<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인풋테그2</title>
</head>
<body>

<%
String str = "abc";
if ("abc".equals(str)){
%>
	IE에서는 안되는 것들 <br>
	일자 : <input type="date"><br>
	색상 : <input type = "color"><br>
	번호 : <input type = "number"><br>
	
	<%
}
	%>
</body>
</html>