<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String name = request.getParameter("name");
String credat = request.getParameter("credat");
String trans = request.getParameter("trans");
String content = request.getParameter("content");
%>
<html>
<body>
<table border="1">
<tr>
	<th>id</th>
	<th>name</th>
	<th>credat</th>
	<th>성별</th>
	<th>하고싶은 말</th>
</tr>

<tr>
	<td><%=id%></td>
	<td><%=name%></td>
	<td><%=credat%></td>
	<td><%=trans%></td>
	<td><%=content.replace("\r","<br>")%></td>
</tr>

</table>
<a href="/jsp-study/req/param_ok.jsp">파람으로 돌아가기</a>
</body>
</html>