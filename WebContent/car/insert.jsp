<%@page import="test.jsp.study.db.DBCon"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String ciName = request.getParameter("ciName");
String ciVendor = request.getParameter("ciVendor");
String ciYear = request.getParameter("ciYear");
String ciEtc = request.getParameter("ciEtc");
if(ciName==null) {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자동차 등록</title>
</head>
<body>
<form method="post">
	자동차 이름 : <input type="text" name="ciName"><br>
	자동차 브랜드 : <input type="text" name="ciVendor"><br>
	자동차 연식 : <input type="text" name="ciYear"><br>
	비고 : <input type="text" name="ciEtc"><br>
	<button>자동차 등록</button>
</form>
</body>
</html>
<%
} else {
String sql = "insert into car_info(ci_num,ci_name,ci_vendor,ci_year,ci_etc) " +
	" values((select nvl(max(ci_num),0)+1 from car_info),?,?,?,?) ";
PreparedStatement ps = DBCon.getCon().prepareStatement(sql);
ps.setString(1,ciName);
ps.setString(2,ciVendor);
ps.setString(3,ciYear);
ps.setString(4,ciEtc);
int cnt = 0;
cnt = ps.executeUpdate();
if(cnt==1) {
	out.println("등록 완료");
} else {
	out.println("등록 실패");
}
out.println("<a href=\"jsp-study/car/list.jsp\">자동차 리스트</a>");
}
%>	
	
	
	