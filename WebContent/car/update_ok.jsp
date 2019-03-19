<%@page import="test.jsp.study.db.DBCon"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("utf-8");
String ciNum = request.getParameter("ciNum");
String ciName = request.getParameter("ciName");
String ciYear = request.getParameter("ciYear");
String ciVendor = request.getParameter("ciVendor");
String ciEtc = request.getParameter("ciEtc");

String sql = "update car_info set ci_name=?, ci_Vendor=?, ci_etc=?, ci_year=?";
sql += " where ci_num=?";

PreparedStatement ps = DBCon.getCon().prepareStatement(sql);
ps.setString(1,ciName);
ps.setString(2,ciYear);
ps.setString(3,ciVendor);
ps.setString(4,ciEtc);
ps.setString(5,ciNum);
int cnt = ps.executeUpdate();
String result = "수정 실패";
if(cnt==1) {
	result = "수정 성공";
}
%>

<script>
	alert("<%=result%>");
	location.href"/jsp_study/car/view.jsp?ciNum="+<%=ciNum%>;
</script>
