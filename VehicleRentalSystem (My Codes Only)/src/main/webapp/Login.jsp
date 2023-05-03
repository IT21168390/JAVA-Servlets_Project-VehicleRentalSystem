<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/Register_Login.css">
<link rel="stylesheet" href="CSS/HeaderFooterMain.css">
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

	<div class="headData">
		<img class="logo" src="Images/VRSlogo.png" width= "300px" height ="100px" ><br/><br/><br/>

	</div>
		<center><h1 class="header">Online Vehicle Rantal System</h1></center>
		
		<hr>
		
		<div class="menubar">
		<ul class="main_menu">
			<li><a href="HomePage.jsp">Home</a></li>
		</ul>
		</div>
		<br>
		
		
		

	<div class="signin"><center>
	<form method="post" action="LoginServlet"><fieldset>
			<h1>User Login</h1><br>
			<p>Please Enter Your Login Credentials...</p>
			<br>
			<label><b>User Name:</b></label><br>
			<input type="text" name="username" id="username" required>
			<br>
			<label><b>Password:</b></label><br>
			<input type="password" name="password" id="psw" required>
			<br>
			<p>Don't have an account?<b> <a href="CustomerInsert.jsp">Register as a Customer</a></b></p>
			<h2><button type="submit" id="btnLogin" name="LoginBTN">Log in</button></h2>
	</fieldset></form>
	</center></div>
	
	
	
	
	
	
	
	<hr>
		
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