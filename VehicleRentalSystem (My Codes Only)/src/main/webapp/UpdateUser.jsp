<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/UserAccount.css">
<link rel="stylesheet" href="CSS/HeaderFooterMain.css">
<meta charset="ISO-8859-1">
<title>Update User Data | VRS</title>
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
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String type = request.getParameter("usType");
	%>

	<center><div class="userClickView">
	<br><form action="UpdateUserServlet" method="post">
	<table>
		<tr><td><label id="upL">User ID: </label></td><td><input id="upF" type="text" name="id" value="<%=id%>" style="border:none;" readonly></td></tr>
		<tr><td><label id="upL">Your Name: </label></td><td><input id="upF" type="text" name="name" value="<%=name%>"></td></tr>
		<tr><td><label id="upL">Your Phone Number: </label></td><td><input id="upF" type="text" name="phone" value="<%=phone%>"></td></tr>
		<tr><td><label id="upL">Your Email: </label></td><td><input id="upF" type="email" name="email" value="<%=email%>"></td></tr>
		<tr><td><label id="upL">Username: </label></td><td><input id="upF" type="text" name="user" value="<%=username%>"></td></tr>
		<tr><td><label id="upL">Password: </label></td><td><input id="upF" type="password" name="pw" value="<%=password%>"></td></tr>
		<tr><td><label id="upL">User Type: </label></td><td><input id="upF" type="text" name="type" value="<%=type%>" style="border:none;" readonly></td></tr>
	</table><br>
		<b><input id="updateUser" type="submit" name="submit" value="Update User Information"></b>
	</form>
	</div></center>
	
	
	
	
	
	<footer>
			<center><table id="footerTable">
				<tr>
				<td>
					<b>V-Rent Zone (Pvt) Ltd.</b><br/><br/>
					<b>Hotline:</b>  (+94 115432367) <b>|</b> (+94 357568990)<br/>
					<b>Email:</b>  Contact@VRentZone.com
				</td>
				<td><center>
					<a href="https://www.facebook.com/" target="_blank"><img class="facebook" src="Images/facebook.png" width="40px" length="40px"></a>
					<a href="https://www.instagram.com/" target="_blank"><img class="instagram" src="Images/instagram.png" width="40px" length="40px"></a>
					<a href="https://twitter.com/" target="_blank"><img class="twitter" src="Images/twitter.png" width="40px" length="40px"></a>
					<a href="https://myaccount.google.com/profile" target="_blank"><img class="google-plus" src="Images/Google_Plus_logo_(2015-2019).svg.png" width="40px" length="40px"></a>
					<br/>
					<b>Follow Us</b>
				</center></td>
				
				<td style="text-align:right">
					<img src="Images/payment-icon.png" width="311px" height="50px">
				</td>
				</tr>
			</table></center>
			<p><center>Copyright © 2022 | All Rights Reserved.</center></p>
		</footer>

</body>
</html>