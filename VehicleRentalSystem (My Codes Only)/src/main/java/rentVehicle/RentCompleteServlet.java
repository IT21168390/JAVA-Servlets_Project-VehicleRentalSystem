package rentVehicle;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import users.CustomerDBUtil;
import users.Users;

@WebServlet("/RentCompleteServlet")
public class RentCompleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//String vID = request.getParameter("vID");
		String vName = request.getParameter("vName");
		String vNumber = request.getParameter("vNumber");
		String vRate = request.getParameter("vRate");
		String vType = request.getParameter("vType");
		String rentDays = request.getParameter("days");
		
		String cID = request.getParameter("uid");
		String cUserName = request.getParameter("uusername");
		String cName = request.getParameter("uname");
		
		boolean isTrue;

		isTrue = RentDBUtil.addRent(vName, vNumber, vType, cID, cName, rentDays, vRate);
		
		if (isTrue == true) {
			List<Users> userDetails = CustomerDBUtil.getUsers(cUserName);
			request.setAttribute("userDetails", userDetails);

			RequestDispatcher dis = request.getRequestDispatcher("UserAccount.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Cannot Rent the Vehicle!');");
			out.println("location='Login.jsp'");
			out.println("</script>");
		}
		
	}

}
