<%@page import="test.jsp.study.db.DBCon"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("utf-8");
String ciNum = request.getParameter("ciNum");

String sql = "delete from car_info where ci_num=?";

PreparedStatement ps = DBCon.getCon().prepareStatement(sql);
ps.setString(1,ciNum);
int cnt = 0;
cnt = ps.executeUpdate();
String result = "삭제 실패";
if(cnt==1) {
	result = "삭제 성공";
}
%>

<script>
alert("<%=result%>");
location.href="/jsp-study/car/list.jsp";
</script>