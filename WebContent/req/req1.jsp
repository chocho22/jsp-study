<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//response.sendRedirect("/jsp-study/req/req2.jsp");
pageContext.setAttribute("너무","힘들다");
request.setAttribute("무슨","commit");
session.setAttribute("backend","뒤끝");
application.setAttribute("왜","안될까??");
RequestDispatcher rd = request.getRequestDispatcher("/req/req2.jsp");
rd.forward(request,response);

%>