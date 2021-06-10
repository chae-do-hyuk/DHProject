package com.BoB.mvc.owner.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BoB.mvc.owner.model.dto.SuggestionDTO;
import com.BoB.mvc.owner.model.service.SuggestionService;

/**
 * Servlet implementation class InsertOwverSuggestion
 */
@WebServlet("/suggestion/insert")
public class InsertOwnerSuggestion extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String path="/WEB-INF/views/owner/Owner_Suggestion_Board_Write.jsp";
	
	request.getRequestDispatcher(path).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String title = request.getParameter("title");
		String suggestion = request.getParameter("suggestion");
		
		SuggestionDTO suggestionDTO = new SuggestionDTO();
		suggestionDTO.setBoardTitle(title);
		suggestionDTO.setBoardContent(suggestion);
		
		SuggestionService suggestionService = new SuggestionService();
		int result =suggestionService.insertSuggestion(suggestionDTO);
		
		System.out.println("result : "+ result);
		String path="";
		if(result>0) {
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "insertBoard");
		}else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "게시판 작성에 실패하셨습니다.");
		}
		 request.getRequestDispatcher(path).forward(request, response);
	}

}
