<%@page import="java.sql.ResultSet"%>
<%@page import="test.jsp.study.db.DBCon"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String ciNum = request.getParameter("ciNum");
String sql = "select ci_num,ci_name,ci_year,ci_vendor,ci_etc from car_info ";
sql += " where ci_num=?";
PreparedStatement ps = DBCon.getCon().prepareStatement(sql);
ps.setString(1,ciNum);
ResultSet rs = ps.executeQuery();
if(rs.next()) {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ڵ��� �˻�</title>
</head>
<body>
���� ���� �ڵ��� ��ȣ : <%=ciNum%>
<form method="get" action="/jsp-study/car/update_ok.jsp">
��ȣ : <input type="number" name="ciNum" value="<%=ciNum%>"
readonly="readonly"><br>
�ڵ����� : <input type="text" name="ciName"
value="<%=rs.getString("ci_name")%>"><br>
�ڵ��� ���� : <input type="text" name="ciYear"
value="<%=rs.getString("ci_year")%>"><br>
�ڵ��� �귣�� : <input type="text" name="ciVendor"
value="<%=rs.getString("ci_vendor")%>"><br>
��� : <input type="text" name="ciEtc" value="<%=rs.getString("ci_etc")%>"><br>
<button>����</button>
</form>
<a href="/jsp-study/car/list.jsp">�ڵ��� ����Ʈ</a>
</body>
</html>
<%
} else {
	out.write("<b>��ȸ�Ͻ� "+ciNum+" ��ȣ�� �������� �ʽ��ϴ�.");
	out.write("<a href=\"jsp-study/car/list.jsp\">�ڵ��� ����Ʈ</a>");
}
%>