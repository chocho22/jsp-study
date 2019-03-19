<%@page import="test.jsp.study.db.DBCon"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String uiNum = request.getParameter("ui_num");
out.print(uiNum);
String uiName = request.getParameter("ui_name");
String uiAge = request.getParameter("ui_age");
String uiId = request.getParameter("ui_id");
String uiEtc = request.getParameter("ui_etc");

String sql = "update user_info set ui_name=?, ui_age=?, ";
sql += " ui_id=?, ui_etc=? where ui_num=?";

PreparedStatement ps = DBCon.getCon().prepareStatement(sql);
ps.setString(1,uiName);
ps.setString(2,uiAge);
ps.setString(3,uiId);
ps.setString(4,uiEtc);
ps.setString(5,uiNum);
int cnt = ps.executeUpdate();
String result = "수정 실패";
if(cnt>0) {
	result = "수정 성공";
}
%>

<script>
alert("<%=result%>");
location.href="/jsp-study/userInfo/user_list.jsp";
</script>