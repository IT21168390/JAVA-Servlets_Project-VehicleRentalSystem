package users;

import java.io.IOException;
//import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*PrintWriter out = response.getWriter();
		response.setContentType("text/html");*/
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("user");
		String password = request.getParameter("pw");
		String usType = request.getParameter("type");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.updateUser(id, name, email, phone, username, password, usType);
		
		if(isTrue==true) {
			List<Users> userDetails = CustomerDBUtil.getUserDetails(id);
			request.setAttribute("userDetails", userDetails);
			
			RequestDispatcher dispatch = request.getRequestDispatcher("UserAccount.jsp");
			dispatch.forward(request, response);

		}
		else {
			List<Users> userDetails = CustomerDBUtil.getUserDetails(id);
			request.setAttribute("userDetails", userDetails);
			
			/*out.println("<script type='text/javascript'>");
			out.println("alert('Update Unsuccessful!');");
			out.println("</script>");*/
			
			RequestDispatcher dispatch = request.getRequestDispatcher("UserAccount.jsp");
			dispatch.forward(request, response);
		}
	}

}
