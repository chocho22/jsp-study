<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%=pageContext.getAttribute("너무")%>
<%=request.getAttribute("무슨")%>
<%=session.getAttribute("backend")%>
<%=application.getAttribute("왜")%>
<%
RequestDispatcher rd = request.getRequestDispatcher("/req/req3.jsp");
rd.forward(request,response);
//response.sendRedirect("/jsp-study/req/req3.jsp");
%>