<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String username = "";
	String password = "";
	request.setCharacterEncoding("utf-8");//防止中文乱码
	
	username = request.getParameter("username");
	password = request.getParameter("password");
	
	//如果用户名和密码都等于admin，则登录成功
	if ("admin".equals(username) && "admin".equals(password)) {
		session.setAttribute("loginUser", username);
		request.getRequestDispatcher("login_success.jsp").forward(request, response);
	}
	else {
		response.sendRedirect("login_failure.jsp");
	}
%>