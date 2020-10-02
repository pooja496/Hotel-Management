<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Room</title>
<style>
body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("resources/img/Searchroom.jpg");
  min-height: 650px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

/* Add styles to the form container */
.container {
  position: absolute;
  border-radius: 5px;
  right: 0;
  margin: 20px;
  max-width: 400px;
  padding: 16px;
  background-color: #DDD;;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  border-radius: 25px;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  background-color: #9c4a10;
  color: white;
  padding: 16px 20px;
  border: none;
  border-radius: 25px;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
</style> 
</head>
<body>
<div class="bg-img">
<a href="userLogin">Back to login</a>
  <form action="searchRoom" class="container" method="post">
    <h1>Book a Room  </h1>

    <label for="Check-In date"><b>Check-In date</b></label>
    <input type="text" placeholder="MM-DD-YYYY" name="checkIn" required>

    <label for="Check-Out date"><b>Check-Out date</b></label>
    <input type="text" placeholder="MM-DD-YYYY" name="checkOut" required>

    <input type="hidden" name="roomStatus" value="Not Booked">
	
		<input type="submit" class="btn" value="Check Availability">
  </form>
</div>

	
</body>
</html>