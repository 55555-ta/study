package ch5;

import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "StudentServlet", urlPatterns = "/student")
public class studentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	studentDAO dao;
    // 모든요청을 처리하는 메서드

	 private void processRequest(
		      HttpServletRequest request, HttpServletResponse response) 
		      throws ServletException, IOException {
		
		dao= new studentDAO();
		
		String action = request.getParameter("action");
		String view = "/ch5/studentSearch.jsp";
		
		switch(action) {
		case "all":view = searchAll(request);break;
		case "search":view=search(request);break;
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
		
	}
	public String searchAll(HttpServletRequest request) {
		List<student> studentList = dao.getAll();
		request.setAttribute("studentList", studentList);
		
		return "/ch5/studentAll.jsp";
	}
	public String search(HttpServletRequest request) {
		String studentID = request.getParameter("id");
		if (studentID !=null) {
			int id = Integer.parseInt(studentID);
			student s = dao.getstudent(id);
			request.setAttribute("student", s);
		}
		return "/ch5/studentInfo.jsp";
	}
	
	@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
		
		processRequest(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		processRequest(request, response);
	}

}
