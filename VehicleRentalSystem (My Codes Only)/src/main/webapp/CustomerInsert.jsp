<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="CSS/Register_Login.css">
<link rel="stylesheet" href="CSS/HeaderFooterMain.css">
<title>Register | VRS</title>
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
		

	<br>
	<center>
		<div class="signup">

			<form method="post" action="UserInsert">
				<fieldset>
					<center>
						<h1>Register</h1>
						<p>Please fill in this form to create an User Account.</p>
					</center>
					<hr>
					<br>
					<div class="signupFields">

						<label><b>Name:</b></label> <input type="text" id="newName1"
							placeholder="Enter Name" name="name" required> <label><b>Username:</b></label>
						<input type="text" id="newName2" placeholder="Enter a User-name"
							name="username" required> <label><b>Telephone
								Number:</b></label> <input type="text" id="telep" placeholder="XXX XXXX XXX"
							name="phone"> <label><b>Email:</b></label> <input
							type="email" id="newEmail" placeholder="Enter Email" name="email"
							id="email" required> <label><b>Password:</b></label> <input
							type="password" id="newPassword" placeholder="Enter Password"
							name="password" id="psw" required> <br>

					</div>
					<center>
						<p>
							Already have an account?<b> <a href="Login.jsp">Sign in</a></b>
						</p>
						<h2>
							<button type="submit" id="btnRegister" name="regButton">Register</button>
						</h2>
					</center>
				</fieldset>
			</form>

		</div>
	</center>





	<%
	/* //<form action="UserInsert" method="post">
		Name <input type="text" name="name"><br>
		Email <input type="text" name="email"><br>
		Phone <input type="text" name="phone"><br>
		UserName <input type="text" name="username"><br>
		Password <input type="text" name="password"><br>
		<input type="submit" name="submit" value="Create Customer"><br>
		</form> */
	%>




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