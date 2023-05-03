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

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/loginServlet")

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String userName = request.getParameter("username");
		String pass = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.validate(userName, pass);
		
		if(isTrue==true) {
			List<Users> userDetails = CustomerDBUtil.getUsers(userName);
			request.setAttribute("userDetails", userDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("UserAccount.jsp");
			dis.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect!');");
			out.println("location='Login.jsp'");
			out.println("</script>");
		}
	}

}
