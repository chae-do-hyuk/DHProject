package com.BoB.mvc.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BoB.mvc.admin.dto.AdminUserDTO;
import com.BoB.mvc.admin.dto.PageInfoDTO;
import com.BoB.mvc.admin.paging.OrderPaging;
import com.BoB.mvc.admin.service.AdminService;

@WebServlet("/admin/customer")
public class SelectCustomerServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String currentPage = request.getParameter("currentPage");
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		
		if(pageNo <= 0) {
			pageNo = 1;
		}
		AdminService adminService = new AdminService();
		int totalCount = adminService.selectUserCount();
		
		System.out.println(totalCount);
		
		/* 한 페이지에 보여 줄 게시물 수 */
		int limit = 10;
		/* 한 번에 보여질 페이징 버튼의 수*/
		int buttonAmount = 5;
		
		PageInfoDTO pageInfo = OrderPaging.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		System.out.println(pageInfo);
		
		List<AdminUserDTO> userList = adminService.selectUserList(pageInfo);
		
		
		
		String path="";
		path = "/WEB-INF/views/admin/index-user.jsp";
		request.setAttribute("userList", userList);
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("message", "성공");
		request.getRequestDispatcher(path).forward(request, response);
	}

}
