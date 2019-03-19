<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="/jsp-study/userInfo/user_ok.jsp">
<table border="1">
<tr>
<th>이름</th>
	<td><input type="text" name="uiName"></td>
	</tr>
	<tr>
<th>연령</th>
	<td><input type="number" name="uiAge"></td>
	</tr>
	<tr>
<th>id</th>
	<td><input type="text" name="uiId"></td>
	</tr>
	<tr>
<th>비고</th>
	<td><textarea name="uiEtc" cols="20" rows="10"></textarea></td>
	</tr>
	<tr>
<td colspan="2" align="center"><button>유저 등록</button></td>
	</tr>
</table>
</form>
</body>
</html>