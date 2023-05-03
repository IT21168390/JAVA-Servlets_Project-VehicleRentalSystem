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

@WebServlet("/ReservationDeleteServlet")
public class ReservationDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String rentID = request.getParameter("rID");
		String userID = request.getParameter("uid");

		boolean isTrue;

		isTrue = RentDBUtil.deleteRent(rentID);
		//RentDBUtil.deleteRent(rentID);
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
