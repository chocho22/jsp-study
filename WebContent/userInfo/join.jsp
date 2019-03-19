<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록하기</title>
</head>
<body>
<form action="/jsp-study/userInfo/join_ok.jsp" method="post">
이름 : <input type="text" name="uiName"><br>
연령 : <input type="text" name="uiAge"><br>
아이디 : <input type="text" name="uiId"><br>
비고 : <input type="text" name="uiEtc"><br>
</form>
<button type="submit">등록</button>
</body>
</html>
