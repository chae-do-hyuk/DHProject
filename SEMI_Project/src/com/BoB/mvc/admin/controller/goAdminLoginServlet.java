package com.BoB.mvc.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class goAdminLoginServlet
 */
@WebServlet("/link/admin/login")
public class goAdminLoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path="";
		path = "/WEB-INF/views/admin/main_manager.jsp";
		request.setAttribute("message", "성공");
		request.getRequestDispatcher(path).forward(request, response);
	
	}

}
