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

@WebServlet("/RentingServlet")
public class RentingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("vehicle");
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		boolean isTrue;
		
		isTrue = RentDBUtil.validate(name);
		
		if(isTrue==true) {
			List<Vehicles> vehicleDetails = RentDBUtil.getVehicleDetails(name);
			request.setAttribute("vehicleDetails", vehicleDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("RentVehicle.jsp");
			dis.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Vehicle does not exists!');");
			out.println("location='Vehicles.jsp'");
			out.println("</script>");
		}
	}

}
