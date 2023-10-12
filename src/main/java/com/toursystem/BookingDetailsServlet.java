package com.toursystem;

import jakarta.servlet.RequestDispatcher; 
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


public class BookingDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  
		

			response.getWriter();
			response.setContentType("text/html");
			
			iCustomerDButil inter = new CustomerDBUtil();
			
			List<Booking> bookDetails = inter.getBooking(CustomerDBUtil.cusID);
			request.setAttribute("bookDetails", bookDetails);
			
			RequestDispatcher dispatcher1 = getServletContext().getRequestDispatcher("/Booking.jsp");
			dispatcher1.forward(request, response);
			
		

}


}
