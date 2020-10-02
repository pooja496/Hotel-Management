<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Room Details</title>
<style>
@charset "UTF-8";
@import url(https://fonts.googleapis.com/css?family=Open+Sans:300,400,700);

body {
  font-family: 'Open Sans', sans-serif;
  font-weight: 300;
  line-height: 1.42em;
  color:#A7A1AE;
  background-color:#1F2739;
}

.blue { color: #185875; }
.yellow { color: #FFF842; }

.container th h1 {
	  font-weight: bold;
	  font-size: 1em;
  text-align: left;
  color: #185875;
}

.container td {
	  font-weight: normal;
	  font-size: 1em;
  -webkit-box-shadow: 0 2px 2px -2px #0E1119;
	   -moz-box-shadow: 0 2px 2px -2px #0E1119;
	        box-shadow: 0 2px 2px -2px #0E1119;
}

.container {
	  text-align: left;
	  overflow: hidden;
	  width: 90%;
	  margin: 0 auto;
  display: table;
  padding: 0 0 8em 0;
}

.container td, .container th {
	  padding-bottom: 2%;
	  padding-top: 2%;
  	padding-left:2%; 
    padding-right:2%; 
}

/* Background-color of the odd rows */
.container tr:nth-child(odd) {
	  background-color: #323C50;
}

/* Background-color of the even rows */
.container tr:nth-child(even) {
	  background-color: #2C3446;
}

.container th {
	  background-color: #1F2739;
}

.container td:first-child { color: #FB667A; }

.container tr:hover {
   background-color: #464A52;
-webkit-box-shadow: 0 6px 6px -6px #0E1119;
	   -moz-box-shadow: 0 6px 6px -6px #0E1119;
	        box-shadow: 0 6px 6px -6px #0E1119;
}

.container td:hover {
  background-color: #FFF842;
  color: #403E10;
  font-weight: bold;
  
  box-shadow: #7F7C21 -1px 1px, #7F7C21 -2px 2px, #7F7C21 -3px 3px, #7F7C21 -4px 4px, #7F7C21 -5px 5px, #7F7C21 -6px 6px;
  transform: translate3d(6px, -6px, 0);
  
  transition-delay: 0s;
	  transition-duration: 0.4s;
	  transition-property: all;
  transition-timing-function: line;
}

@media (max-width: 800px) {
.container td:nth-child(4),
.container th:nth-child(4) { display: none; }
}
</style>
</head>
<body>
	<table class="container">
	<thead>
	<tr>
	<th>Room No.</th>
	<th>Check-In date</th>
	<th>Check-Out date</th>
	<th>Room Type</th>
	<th>No. of guests</th>
	<th>Room Status</th>
	<th>First Name</th>
	<th>Last Name</th>
	<th>Email &nbsp&nbsp&nbsp&nbsp</th>
	<th>Mobile No.</th>
	</tr>
	</thead>	
	
	<c:forEach items="${allRooms }" var="allRooms">
	<tr>
		<td>${allRooms.roomNo }</td>
		<td>${allRooms.checkIn }</td>
		<td>${allRooms.checkOut }</td>
		<td>${allRooms.roomType }</td>
		<td>${allRooms.noOfGuest }</td>
		<td>${allRooms.roomStatus }</td>
		<td>${allRooms.firstname }</td>
		<td>${allRooms.lastname }</td>
		<td>${allRooms.email }</td>
		<td>${allRooms.phone }</td>
	</tr>
	</c:forEach>
	
	</table>
	
</body>
</html>