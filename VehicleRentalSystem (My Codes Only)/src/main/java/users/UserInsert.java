package users;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/UserInsert")

public class UserInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		boolean isTrue;

		isTrue = CustomerDBUtil.insertCustomer(name, email, phone, username, password);

		if (isTrue == true) {
			List<Users> userDetails = CustomerDBUtil.getUsers(username);
			request.setAttribute("userDetails", userDetails);

			RequestDispatcher dis = request.getRequestDispatcher("UserAccount.jsp");
			dis.forward(request, response);
		} else {
			/*
			 * RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");;
			 * dis2.forward(request, response);
			 */

			out.println("<script type='text/javascript'>");
			out.println("alert('Registration Unsuccessful!');");
			out.println("location='CustomerInsert.jsp'");
			out.println("</script>");
		}
	}

}
