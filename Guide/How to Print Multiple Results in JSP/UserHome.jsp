<%@page import="dB.Event"%>
<%@page import="dB.Booking"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

	<%
	if (session.getAttribute("userId") == null) {
		response.sendRedirect("userLogin.jsp");
	}
	%>

	<div align="center">

		<h2>List of Events</h2>

		<table border="1" cellpadding="12">
			<tr>
				<th>Event Name</th>
				<th>Event Description</th>
				<th>Price</th>
				<th>Venue</th>
			</tr>
			<%
			Event ev = new Event();
			ResultSet rs = ev.getAllEvent();

			while (rs.next()) {
			%>
			<tr>
				<td><h4><%=rs.getString("Ename")%></h4></td>
				<td><%=rs.getString("des")%></td>
				<td><%=rs.getString("price")%>.00</td>
				<td><%=rs.getString("venue")%></td>

				<td>
					<form method="POST" action="<%=request.getContextPath()%>/Book">
						<input type="text" name="eventid" value="<%=rs.getInt("id")%>" hidden=true />
						<input type="submit" name="Addbook" value="Book Now" class="select-button" />
					</form>
				</td>
			</tr>
			<%
			}
			%>
		</table>

		<h2>My Booking</h2>

		<table border="1" cellpadding="12">
			<tr>
				<th>Booking Id</th>
				<th>Name</th>
				<th>Event</th>
				<th>Date</th>
				<th>Venue</th>
				<th>Participants</th>
				<th>Contact</th>
				<th>Email</th>
				<th>Address</th>
				<th>price</th>
			</tr>
			<%
			Booking b = new Booking();
			String id = "" + session.getAttribute("userId");
			ResultSet ars = b.getAllBooking(id);
			while (ars.next()) {
			%>
			<tr>
				<td><%=ars.getInt("id")%></td>
				<td><%=ars.getString("name")%></td>
				<td><%=ars.getString("Ename")%></td>
				<td><%=ars.getString("date")%></td>
				<td><%=ars.getString("venue")%></td>
				<td><%=ars.getString("Participants")%></td>
				<td><%=ars.getString("contact")%></td>
				<td><%=ars.getString("email")%></td>
				<td><%=ars.getString("address")%></td>
				<td><%=ars.getString("price")%>.00</td>

				<td>
					<form method="POST" action="<%=request.getContextPath()%>/Book">
						<input type="text" name="id" value="<%=ars.getInt("id")%>"
							hidden=true /> <input type="submit" name="edit"
							value="Edit Booking" class="select-button" />
					</form>
				</td>
			</tr>
			<%
			}
			%>
		</table>

	</div>
</body>
</html>