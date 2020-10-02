<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<style>
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}
* {
  box-sizing: border-box;
}
.bg-image {
  background-image: url("resources/img/Bg image.jpg");
  height: 100%; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.bg-text {
  background-color: white; 
  background-color: white;
  color: black;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 50%;
  padding: 20px;
  text-align: center;
  }
  input[type=text], input[type=password] {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
button {
  background-color: #c92884;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 50%;
}
button:hover {
  opacity: 0.8;
}
.container {
  padding: 16px;
}
span.psw
 {
  float: right;
  padding-top: 16px;
}
span.signup
 {
  float: center;
  padding-top: 16px;
}
</style>
</head>
<body>

<div class="bg-image"></div>
<div class="bg-text">
	<h1>User Login</h1>
     <div class="container">
     <form action="saveLogin" method="post">
    <input type="text" placeholder="Enter Username" name="email" required>
	<input type="password" placeholder="Enter Password" name="password" required>
    <button type="submit">Login</button>
    <p>New user? <a href="showuser">Create Account</a></p>
    </form>
    </div>
  <hr>
  OR Login with
  <form action="Admin" method="post">
  <button type="submit">Admin Login</button><br>
  <a href="FrontPage">Back to Main Page</a>
  
  </form>
	</div>
</body>
</html>