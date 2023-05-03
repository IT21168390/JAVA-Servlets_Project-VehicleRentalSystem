<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vehicles | VRS</title>
<link rel="stylesheet" href="CSS/Vehicles.css">
<link rel="stylesheet" href="CSS/HeaderFooterMain.css">
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
	String cid = request.getParameter("uid");
	String cname = request.getParameter("uname");
	String cusername = request.getParameter("uusername");
	String ctype = request.getParameter("uusType");
	%>
	<c:url value="RentingServlet" var="rent">
			<c:param name="uid" value="<%=cid%>"/>
			<c:param name="uname" value="<%=cname%>"/>
			<c:param name="uusername" value="<%=cusername%>"/>
			<c:param name="uusType" value="<%=ctype%>"/>
	</c:url>
	
	

	<center><h1><b>VEHICLES</b></h1></center>
		
		<div class="vehicleSectionsTop">
		
		<div class="Vehi">
		<form method="post" action="${rent}">
			<label>RENT: Option 1</label>
			<p></p>
			<input type="text" name="vehicle" value="Toyota Land Cruiser" readonly>
			<p></p>
			<center><input type="submit" value="RENT THIS VEHICLE"></center>
		</form>
		</div>
		
		<div class="Vehi">
		<form method="post" action="${rent}">
			<label>RENT: Option 2</label>
			<p></p>
			<input type="text" name="vehicle" value="Nissan Leaf" readonly>
			<p></p>
			<center><input type="submit" value="RENT THIS VEHICLE"></center>
		</form>
		</div>
		
		<div class="Vehi">
		<form method="post" action="${rent}">
			<label>RENT: Option 3</label>
			<p></p>
			<input type="text" name="vehicle" value="BMW 7-Series" readonly>
			<p></p>
			<center><input type="submit" value="RENT THIS VEHICLE"></center>
		</form>	
		</div>
		</div>
		<div class="vehicleSectionsBottom">
		<div class="Vehi">
		<form method="post" action="${rent}">
			<label>RENT: Option 4</label>
			<p></p>
			<input type="text" name="vehicle" value="Mercedes e300" readonly>
			<p></p>
			<center><input type="submit" value="RENT THIS VEHICLE"></center>
		</form>	
		</div>
		
		<div class="Vehi">
		<form method="post" action="${rent}">
			<label>RENT: Option 5</label>
			<p></p>
			<input type="text" name="vehicle" value="Suzuki Vagon R" readonly>
			<p></p>
			<center><input type="submit" value="RENT THIS VEHICLE"></center>
		</form>	
		</div>
		
		</div>
		
		<hr>
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