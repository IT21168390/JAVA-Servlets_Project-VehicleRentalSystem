package rentVehicle;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
import users.CustomerDBUtil;
import users.Users;
*/
@WebServlet("/Reservations")
public class Reservations extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String id = request.getParameter("uCID");
		
		
			List<Orders> orderDetails = RentDBUtil.getRentDetails(id);
			request.setAttribute("orderDetails", orderDetails);
			
			RequestDispatcher dispatch = request.getRequestDispatcher("Orders.jsp");
			dispatch.forward(request, response);

	}

}
