package test.jsp.study.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import test.jsp.study.service.UserService;
import test.jsp.study.service.impl.UserServiceImpl;

public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService us = new UserServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pw = response.getWriter();
		
		String cmd = request.getParameter("cmd");
		if (cmd == null) {
			pw.print("커맨드 없는 요청은 정상적인 요청이 아닙니다.");
		} else {
			if ("users".equals(cmd)) {
				pw.print(us.selectUserList(null));
			} else if ("user".equals(cmd)) {
				String uiNum = request.getParameter("ui_num");
				if (uiNum == null || "".equals(uiNum)) {
					pw.print("누구를 조회하라고??");
				} else {
					Map<String, String> user = new HashMap<>();
					user.put("ui_num", uiNum);
					pw.print(us.selectUser(user));
				}
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pw = response.getWriter();
		request.setCharacterEncoding("utf-8");
		String cmd = request.getParameter("cmd");
		if (cmd == null) {
			pw.print("커맨드 없는 요청은 정상적인 요청이 아닙니다.");
		} else {
			if ("insert".equals(cmd)) {
				Map<String,String> user = new HashMap<>();
				user.put("ui_name",request.getParameter("ui_name"));
				user.put("ui_id",request.getParameter("ui_id"));
				user.put("ui_age",request.getParameter("ui_age"));
				user.put("ui_etc",request.getParameter("ui_etc"));
				int cnt = us.insertUser(user);
				String result = "등록 실패";
				if(cnt==1) {
					result = "등록 완료";
				}
				pw.println(result);
			} else if ("update".equals(cmd)) {
				Map<String,String> user = new HashMap<>();
				user.put("ui_name",request.getParameter("ui_name"));
				user.put("ui_id",request.getParameter("ui_id"));
				user.put("ui_age",request.getParameter("ui_age"));
				user.put("ui_etc",request.getParameter("ui_etc"));
				user.put("ui_num",request.getParameter("ui_num"));
				int cnt = us.updateUser(user);
				String result = "수정 실패";
				if(cnt==1) {
					result = "수정 성공";
				}
				pw.println(result);
			} else if ("delete".equals(cmd)) {
				Map<String,String> user = new HashMap<>();
				user.put("ui_num",request.getParameter("ui_num"));
				int cnt = us.deleteUser(user);
				String result = "삭제 실패";
				if(cnt==1) {
					result = "삭제 성공";
				}
				pw.println(result);
			} else if("login".equals(cmd)) {
				String uiId = request.getParameter("uiId");
				String uiPwd = request.getParameter("pwd");
				Map<String,String> user = us.login(uiId);
				if(user!=null) {
					String pwd = user.get("ui_pwd");
					if(uiPwd.equals(pwd)) {
						HttpSession session = request.getSession();
						session.setAttribute("user", user);
						response.sendRedirect("/jsp-study/login/welcome.jsp");
						return;
					} else {
						
					}
				}
				pw.print("<script>");
				pw.print("alert('아이디나 비밀번호를 확인해주세요');");
				pw.print("location.href='/jsp-study/login/login.jsp';");
				pw.print("</script>");
			}
		}
	}
}
