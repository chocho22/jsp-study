<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
List<String> strList = new ArrayList<>();
strList.add("대답이라도");
strList.add("잘하자");
request.setAttribute("list",strList);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="name" value="이초롱"/>
<c:choose>
	<c:when test="${name=='이초롱'}">
	이름이 이초롱이네요,,,,
	</c:when>
	<c:when test="${name=='이시리'}">
	이름이 이시리네요,,,,
	</c:when>
	<c:otherwise>
	내가 모르는 애네
	</c:otherwise>
</c:choose>
<c:forEach var="i" begin="1" end="10" step="2">
	${i},
</c:forEach>
<br>

<c:forEach var="str" items="${list}">
	${str}<br>
</c:forEach>
${list}
</body>
</html>
