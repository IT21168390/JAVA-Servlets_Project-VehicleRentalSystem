<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/HeaderFooterMain.css">
<link rel="stylesheet" href="CSS/UserAccount.css">
<meta charset="ISO-8859-1">
<title>User Profile | VRS</title>
</head>
<body>

	<div class="headData">
		<img class="logo" src="Images/VRSlogo.png" width= "300px" height ="100px" ><br/><br/><br/>
		
		<label><a href="HomePage.jsp">LOG OUT</a></label>
		</div>
		<center><h1 class="header">Online Vehicle Rantal System</h1></center>
		
		<hr>
		
		<c:forEach var="cus" items="${userDetails}">
	
			<c:set var="id" value="${cus.id}"/>
			<c:set var="name" value="${cus.name}"/>
			<c:set var="email" value="${cus.email}"/>
			<c:set var="phone" value="${cus.phone}"/>
			<c:set var="username" value="${cus.username}"/>
			<c:set var="password" value="${cus.password}"/>
			<c:set var="usType" value="${cus.userType}"/>
		  </c:forEach>
		  
		  
		
		<c:url value="Vehicles.jsp" var="rent">
			<c:param name="uid" value="${id}"/>
			<c:param name="uname" value="${name}"/>
			<c:param name="uusername" value="${username}"/>
			<c:param name="uusType" value="${usType}"/>
		</c:url>
		
		<div class="menubar">
		<ul class="main_menu">
			<li><a href="HomePage.jsp">Home</a></li>
			<li><a href="${rent}">Vehicles</a></li>
		
		</ul>
		</div>
		<br>
		


	<center><h1><b>USER ACCOUNT</b></h1></center>
	
		  
		  
		  <c:url value="UpdateUser.jsp" var="userUp">
			<c:param name="id" value="${id}"/>
			<c:param name="name" value="${name}"/>
			<c:param name="email" value="${email}"/>
			<c:param name="phone" value="${phone}"/>
			<c:param name="username" value="${username}"/>
			<c:param name="password" value="${password}"/>
			<c:param name="usType" value="${usType}"/>
		</c:url>
		
		<c:url value="Reservations" var="rentsView">
			<c:param name="id" value="${id}"/>
			<c:param name="name" value="${name}"/>
			<c:param name="username" value="${username}"/>
			<c:param name="usType" value="${usType}"/>
		</c:url>
		
		<div class="UR">
		
		<center><div class="userBTNS">
		<a href="${userUp}"><input id=userUPDATEbtn type="button" value="Update Account Information"></a><br>
		<a href="${rent}"><input id=viewBOOKINGSbtn type="button" value="Rent a Vehicle"></a><br>
		<form method="post" action="${rentsView}"><input id=viewBOOKINGSbtn type="submit" value="View Rents"><br><input type="hidden" name="uCID" value="${id}" readonly style="border:none;text-align:center;"></form>
		</div></center>
	
	
	
	
	
	
			<center><div class="profileInfo">
		  <img src="Images/profile_image.png" alt="Profile Picture" style="width:225px">
		  
		  <p class="uType">User Type --- ${usType}</p>
		  <h1 id="userName">${username}</h1>
		  <div class="currentUser"><table class="uData">
		  <tr>
		  <td><p id="tableLeft"><b>User ID :</b></p></td><td><p id="tableRight"> ${id}</p></td>
		  </tr>
		  <tr>
		  <td><p id="tableLeft"><b>Name :</b></p></td><td><p id="tableRight"> ${name}</p></td>
		  </tr>
		  <tr>
		  <td><p id="tableLeft"><b>Email :</b></p></td><td><p id="tableRight"> ${email}</p></td>
		  </tr>
		  <tr>
		  <td><p id="tableLeft"><b>Phone Number :</b></p></td><td><p id="tableRight"> ${phone}</p></td>
		  </tr>
		  </table></div>
		  
		  <c:url value="UserDelete.jsp" var="userDel">
			<c:param name="id" value="${id}"/>
			<c:param name="name" value="${name}"/>
			<c:param name="email" value="${email}"/>
			<c:param name="phone" value="${phone}"/>
			<c:param name="username" value="${username}"/>
			<c:param name="password" value="${password}"/>
			<c:param name="usType" value="${usType}"/>
		</c:url>
		  <p><button id="profileOUT" onclick="document.location.href='${userDel}'">DELETE ACCOUNT</button></p>

		</div></center>
	
		</div>
	
	
	<%/*
	<div class="currentUser">
		  <label><b>User ID :</b></label><p id="uid"> ${id}</p>
		  <label><b>Name :</b></label><p id="name"> ${name}</p>
		  <label><b>Email :</b></label><p id="userEmail"> ${email}</p>
		  <label><b>Phone Number :</b></label><p id="userPhone"> ${phone}</p>
    </div>*/
	%>
	
    <% /*
    <table>
	<c:forEach var="cus" items="${userDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="username" value="${cus.username}"/>
	<c:set var="password" value="${cus.password}"/>
	<c:set var="usType" value="${cus.userType}"/>
	
	<tr>
		<td>User ID: </td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>Name: </td>
		<td>${cus.name}</td>
	</tr>
	<tr>
		<td>Phone Number: </td>
		<td>${cus.phone}</td>
	</tr>
	<tr>
		<td>Email: </td>
		<td>${cus.email}</td>
	</tr>
	<tr>
		<td>User-name: </td>
		<td>${cus.username}</td>
	</tr>
	<tr>
		<td>User-type: </td>
		<td>${cus.userType}</td>
	</tr>

	</c:forEach>
	</table>*/
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
	
</body>
</html>