package users;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserDelete")
public class UserDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue = CustomerDBUtil.deleteUser(id);
		
		if(isTrue==true) {
			RequestDispatcher dispatch = request.getRequestDispatcher("CustomerInsert.jsp");
			dispatch.forward(request, response);
		}
		else {
			List<Users> userDetails = CustomerDBUtil.getUserDetails(id);
			request.setAttribute("userDetails", userDetails);
			
			RequestDispatcher dispatch = request.getRequestDispatcher("UserAccount.jsp");
			dispatch.forward(request, response);
		}
	}

}
