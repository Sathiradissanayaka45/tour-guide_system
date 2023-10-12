package com.toursystem;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class CustomerFeedbackServlet
 */
public class CustomerFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//save insert data to variable
		String date = request.getParameter("date");
		String username = request.getParameter("username");
		String Feedback = request.getParameter("Feedback");
		
		
		//catch output value from return value from dbutil
				boolean isTrue;
				
				iCustomerDButil inter = new CustomerDBUtil();
				
				isTrue = inter.insertfeedback(date, username, Feedback);
				
				if(isTrue == true) {
					RequestDispatcher dis = request.getRequestDispatcher("frontmain.jsp");
					dis.forward(request, response);
				} else {
					RequestDispatcher dis2 = request.getRequestDispatcher("frontmain.jsp");
					dis2.forward(request, response);
				}
	}

}
