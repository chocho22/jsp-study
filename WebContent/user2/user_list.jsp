<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="/jsp-study/user?cmd=users">유저 리스트 보기</a><br>
<a href="/jsp-study/user?cmd=user&ui_num=65">65번 데이터 보기</a>
<form method="post" action="/jsp-study/user"><br>
이름 : <input type="text" name="ui_name"><br>
아이디 : <input type="text" name="ui_id"><br>
나이 : <input type="number" name="ui_age"><br>
비고 : <input type="text" name="ui_etc"><br>
<input type="hidden" name="cmd" value="insert"><br>
<button>유저 등록</button><br>
</form>
<form method="post" action="/jsp-study/user"><br>
번호 : <input type="text" name="ui_num"><br>
이름 : <input type="text" name="ui_name"><br>
아이디 : <input type="text" name="ui_id"><br>
나이 : <input type="number" name="ui_age"><br>
비고 : <input type="text" name="ui_etc"><br>
<input type="hidden" name="cmd" value="update"><br>
<button>유저 수정</button><br>
</form>
<form method="post" action="/jsp-study/user"><br>
번호 : <input type="number" name="ui_num"><br>
<input type="hidden" name="cmd" value="delete"><br>
<button>유저 삭제</button><br>
</form>
</body>
</html>