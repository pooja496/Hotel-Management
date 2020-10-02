<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<style>
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.Back-image {
  background-image: linear-gradient(rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2)), url("resources/img/frontView.jpg");
  height: 100%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

.Back-text {
  text-align: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
}

.Back-text button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 10px 25px;
  color: black;
  background-color: red;
  text-align: center;
  cursor: pointer;
}

.Back-text button:hover {
  background-color: #555;
  color: white;
}
</style>
</head>
<body>

<div class="Back-image">
  <div class="Back-text">
    <h1 style="font-size:50px">Hotel & Resort</h1>
    <p>Get your Imagination here</p>
    <form action="userLogin" method="post">
    <button>Login</button>
    </form>
  </div>
</div>
</body>
</html>
