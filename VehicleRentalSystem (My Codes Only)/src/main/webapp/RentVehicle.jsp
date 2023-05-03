<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="CSS/UserAccount.css">
<link rel="stylesheet" href="CSS/HeaderFooterMain.css">
<title>Rent the Vehicle</title>
<link rel="stylesheet" href="CSS/Vehicles.css">
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



	<c:forEach var="vehi" items="${vehicleDetails}">
		<c:set var="id" value="${vehi.vId}" />
		<c:set var="name" value="${vehi.vName}" />
		<c:set var="number" value="${vehi.vNum}" />
		<c:set var="type" value="${vehi.vType}" />
		<c:set var="color" value="${vehi.vColor}" />
		<c:set var="rate" value="${vehi.vRate}" />
	</c:forEach>

	<%
	String cid = request.getParameter("uid");
	String cname = request.getParameter("uname");
	String cusername = request.getParameter("uusername");
	String ctype = request.getParameter("uusType");
	%>


	<center>
		<div class="userClickView">
			<br>
			<form action="RentCompleteServlet" method="post">
				<table>
					<tr>
						<td><label id="upL">Vehicle ID: </label></td>
						<td><b><input type="text" name="vID" value="${id}"
								readonly style="border: none; font-weight: bold;"></b></td>
					</tr>
					<tr>
						<td><label id="upL">Vehicle Name: </label></td>
						<td><b><input type="text" name="vName" value="${name}"
								readonly style="border: none; font-weight: bold;"></b></td>
					</tr>
					<tr>
						<td><label id="upL">Vehicle Number: </label></td>
						<td><b><input type="text" name="vNumber"
								value="${number}" readonly
								style="border: none; font-weight: bold;"></b></td>
					</tr>
					<tr>
						<td><label id="upL">Vehicle Rate: </label></td>
						<td><b><input type="text" name="vRate" value="${rate}"
								readonly style="border: none; font-weight: bold;"></b></td>
					</tr>
					<tr>
						<td><label id="upL">Vehicle Color: </label></td>
						<td><b><input type="text" name="vColor" value="${color}"
								readonly style="border: none; font-weight: bold;"></b></td>
					</tr>
					<tr>
						<td><label id="upL">Vehicle Type: </label></td>
						<td><b><input type="text" name="vType" value="${type}"
								readonly style="border: none; font-weight: bold;"></b></td>
					</tr>

					<tr>
						<td><label id="upL">Rent for: </label></td>
						<td><b><input type="text" name="days"
								style="font-weight: bold;" required> </b>Days.</td>
					</tr>
					<tr>
						<td><p></p></td>
					</tr>
					<tr>
						<td><p></p></td>
					</tr>
					<tr>
						<td><label id="upL">Your Name: </label></td>
						<td><b><input type="text" name="uname" value="<%=cname%>"
								style="border: none; font-weight: bold;" readonly></b></td>
					</tr>
					<tr>
						<td><label id="upL">Your ID: </label></td>
						<td><b><input type="text" name="uid" value="<%=cid%>"
								style="border: none; font-weight: bold;" readonly></b></td>
					</tr>
					<tr>
						<td><label id="upL">Username: </label></td>
						<td><b><input type="text" name="uusername"
								value="<%=cusername%>" style="border: none; font-weight: bold;"
								readonly></b></td>
					</tr>
				</table>
				<br> <b><input id="updateUser" type="submit" name="submit"
					value="Confirm Rent"></b>
			</form>
		</div>
	</center>






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