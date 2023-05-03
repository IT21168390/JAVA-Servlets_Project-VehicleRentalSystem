package rentVehicle;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import users.CustomerDBUtil;
import users.Users;

@WebServlet("/ReservationUpdateServlet")
public class ReservationUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String rentID = request.getParameter("order");
		String newDays = request.getParameter("newDays");
		String vehicleChargeRate = request.getParameter("dailyRate");
		
		String userID = request.getParameter("user");
		
		boolean isTrue;
		
		isTrue = RentDBUtil.updateRent(rentID, newDays, vehicleChargeRate);
		
		if(isTrue==true) {
			List<Users> userDetails = CustomerDBUtil.getUserDetails(userID);
			request.setAttribute("userDetails", userDetails);

			RequestDispatcher dispatch = request.getRequestDispatcher("UserAccount.jsp");
			dispatch.forward(request, response);
		}
		else {
			List<Users> userDetails = CustomerDBUtil.getUserDetails(userID);
			request.setAttribute("userDetails", userDetails);

			RequestDispatcher dispatch = request.getRequestDispatcher("UserAccount.jsp");
			dispatch.forward(request, response);
		}
		
	}

}
