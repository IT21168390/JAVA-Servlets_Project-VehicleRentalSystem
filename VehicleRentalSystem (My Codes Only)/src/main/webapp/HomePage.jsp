<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Vehicle Rental System</title>

<link rel="stylesheet" href="CSS/HeaderFooterMain.css">
<link rel="stylesheet" href="CSS/HomePage.css">

</head>
<body>

	<div class="headData">
		<img class="logo" src="Images/VRSlogo.png" width= "300px" height ="100px" ><br/><br/><br/>

	</div>
		<center><h1 class="header">Online Vehicle Rantal System</h1></center>
		
		<hr>
		
	<div class="menubar">
		<ul class="main_menu">
			<li><a href="#">Home</a></li>
		</ul>
	</div>
	<br>
		
	
	
	
	
	
	
	
	
	
	
	<div class="homeBody">
		
		<img src="Images/car.webp" id="carImage">
		
		<center><h1>WELCOME TO <span style="color: blue">V-RENT ZONE</span></h1></center>
		<center><p>
		V-RENT ZONE is an islandwide vehicle rental service trusted by thousands of people. We provide various kinds of vehicles for the best price in the industry.
		</p></center>
		<br>
		<center><button type="button" onclick="location.href='Login.jsp'" id="customerLoginBTN"><b>Sign in as a Customer</b></button><br><br><br>
		<label>Are you an Admin? Sign in here to make the service better !</label><br><br>
		<input type="button" value="Admin Panel" onclick="location.href='#'"><br><br><br>
		<button class="supplier" onclick="location.href='#'">
		<p><b>Are you a supplier? Start managing your vehicles and services...</b></p>
		<img src="Images/Mahindra_XUV_700.png">
		</button></center>
		</div>
		<br>
		
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