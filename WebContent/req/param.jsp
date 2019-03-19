<%@page import="java.util.Set"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터의 파람</title>
</head>
<body>
<%
Map<String,String[]> map = request.getParameterMap();
Set<String> keys = map.keySet();
Iterator<String> it = keys.iterator();
while(it.hasNext()) {
	String key = it.next();
	String[] values = map.get(key);
	out.write(key + " : " + values[0]);
}
String[] ids = map.get("id");
String name = request.getParameter("name");
String credat = request.getParameter("credat");
String trans = request.getParameter("trans");
String content = request.getParameter("content");
if(ids!=null) {
	out.write(ids[0]);
	out.write(name);
	out.write(credat);
	out.write(trans);
	out.write(content);
}
%>
<form method="get" action="/jsp-study/req/param_ok.jsp">
	<input type="text" name="id" value="이게"><br>
	<input type="text" name="name" value="뭐지"><br>
	<input type="date" name="credat" value="2019-03-14"><br>
	<select name="trans">
		<option value="w">여자</option>
		<option value="m">남자</option>
	</select><br>
	<textarea name="content" cols="20" rows="20"></textarea><br>
	<button>전송</button>
</form>
</body>
</html>