<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="CSS/HeaderFooterMain.css">
<link rel="stylesheet" href="CSS/UserAccount.css">
<title>Insert title here</title>
</head>
<body>

	<div class="headData">
		<img class="logo" src="Images/VRSlogo.png" width="300px"
			height="100px"><br />
		<br />
		<br />

	</div>
	<center>
		<h1 class="header">Online Vehicle Rantal System</h1>
	</center>

	<hr>

	<div class="menubar">
		<ul class="main_menu">
			<li><a href="HomePage.jsp">Home</a></li>
		</ul>
	</div>
	<br>



	<%
	String id = request.getParameter("id");
	String type = request.getParameter("usType");
	String name = request.getParameter("name");
	%>

	<c:forEach var="rentals" items="${orderDetails}">

		<c:set var="rid" value="${rentals.rId}" />
		<c:set var="Vname" value="${rentals.vName}" />
		<c:set var="Vnum" value="${rentals.vNum}" />
		<c:set var="Vtype" value="${rentals.vType}" />
		<c:set var="Vrate" value="${rentals.vRate}" />
		<c:set var="userID" value="${rentals.cusID}" />
		<c:set var="user" value="${rentals.cusName}" />
		<c:set var="days" value="${rentals.days}" />
		<c:set var="cost" value="${rentals.cost}" />
	</c:forEach>
	
	<%  %>
	

	<center>
		<div class="userClickView">
			<br>
			<form action="ReservationDeleteServlet" method="post">
				</u><label><u><b>Your Rental Details</b></u></label><br>
				<table>
					<tr>
						<td><label id="upL">Rent ID: </label></td>
						<td><b><input type="text" name="rID" value="${rid}"
								readonly style="border: none; font-weight: bold;"></b></td>
					</tr>
					<tr>
						<td><label id="upL">Vehicle Name: </label></td>
						<td><b><input type="text" name="vName" value="${Vname}"
								readonly style="border: none; font-weight: bold;"></b></td>
					</tr>
					<tr>
						<td><label id="upL">Vehicle Number: </label></td>
						<td><b><input type="text" name="vNumber" value="${Vnum}"
								readonly style="border: none; font-weight: bold;"></b></td>
					</tr>
					<tr>
						<td><label id="upL">Vehicle Type: </label></td>
						<td><b><input type="text" name="vType" value="${Vtype}"
								readonly style="border: none; font-weight: bold;"></b></td>
					</tr>

					<tr>
						<td><label id="upL">Rent for (Days): </label></td>
						<td><b><input type="text" name="days" value="${days}"
								readonly style="border: none; font-weight: bold;"> </b></td>
					</tr>
					<tr>
						<td><label id="upL">Total Cost: </label></td>
						<td><b><input type="text" name="tCost" value="${cost}"
								readonly style="border: none; font-weight: bold;"></b></td>
					</tr>
					<tr>
						<td><p></p></td>
					</tr>
					<tr>
						<td><p></p></td>
					</tr>
					<tr>
						<td><label id="upL">Your Name: </label></td>
						<td><b><input type="text" name="uname" value="<%=name%>"
								style="border: none; font-weight: bold;" readonly></b></td>
					</tr>
					<tr>
						<td><label id="upL">Your ID: </label></td>
						<td><b><input type="text" name="uid" value="<%=id%>"
								style="border: none; font-weight: bold;" readonly></b></td>
					</tr>
				</table>
				<br> <b><input id="updateUser" type="submit" name="submit"
					value="Cancel Rent" style="background: red;"></b>
			</form>
			<br><br>
			<form method="post" action="ReservationUpdateServlet">
			<b>Set New Days-Count as <input type="text" name="newDays" value="${days}" style="font-weight: bold; text-align:center; padding:3px; width:60px" required> </b><br>
			<b><br>for <input type="text" name="dailyRate" value="${Vrate}" style="border: none; text-align:center; font-weight:bold; width:60px;" readonly > LKR Daily Rate,</b> for Order ID :
			<input type="text" name="order" value="${rid}" style="border: none; text-align:center; width:40px;" readonly> of the User 
			<input type="text" name="user" value="<%=id%>" style="border: none; text-align:center; width:40px;" readonly>
			<br><br> <b><input id="updateUser" type="submit" name="submit" value="Update Reservation"></b>
			</form>
		</div>
	</center><br>





	<footer>
		<center>
			<table id="footerTable">
				<tr>
					<td><b>V-Rent Zone (Pvt) Ltd.</b><br />
					<br /> <b>Hotline:</b> (+94 115432367) <b>|</b> (+94 357568990)<br />
						<b>Email:</b> Contact@VRentZone.com</td>
					<td><center>
							<a href="https://www.facebook.com/" target="_blank"><img
								class="facebook" src="Images/facebook.png" width="40px"
								length="40px"></a> <a href="https://www.instagram.com/"
								target="_blank"><img class="instagram"
								src="Images/instagram.png" width="40px" length="40px"></a> <a
								href="https://twitter.com/" target="_blank"><img
								class="twitter" src="Images/twitter.png" width="40px"
								length="40px"></a> <a
								href="https://myaccount.google.com/profile" target="_blank"><img
								class="google-plus"
								src="Images/Google_Plus_logo_(2015-2019).svg.png" width="40px"
								length="40px"></a> <br /> <b>Follow Us</b>
						</center></td>

					<td style="text-align: right"><img
						src="Images/payment-icon.png" width="311px" height="50px"></td>
				</tr>
			</table>
		</center>
		<p>
		<center>Copyright © 2022 | All Rights Reserved.</center>
		</p>
	</footer>


</body>
</html>