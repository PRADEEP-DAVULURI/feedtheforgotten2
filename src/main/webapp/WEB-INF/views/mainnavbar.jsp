<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feed the Forgotten</title>

<!-- External CSS for Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- Internal CSS for styling -->
<style>
/* General body styling */
body {
    background-color: #444444;
}

/* Header text styling */
h2 {
    color: white;
    text-align: center;
    margin-top: 20px;
}

/* Blurring only the word 'Forgotten' */
h2 .blur-text {
    display: inline-block;
    color: rgba(255, 255, 255, 0.7);
    filter: blur(3px); /* Adds the blur effect */
    transition: filter 0.3s ease;
}

/* Optional hover effect to remove blur */
h2 .blur-text:hover {
    filter: blur(0); /* Removes blur on hover */
}

/* Style for the navbar */
div.navbar {
    background-color: #1E3E62;
    padding: 15px;
    text-align: center;
    margin-top: 40px;
}

/* Style for the links in the navbar */
div.navbar a {
    color: white;
    text-decoration: none;
    font-size: 18px;
    font-weight: bold;
    margin: 0 20px;
    position: relative;
    display: inline-block;
    transition: color 0.3s ease;
}

/* Hover effect with underline animation */
div.navbar a::after {
    content: "";
    position: absolute;
    left: 0;
    bottom: -5px;
    height: 3px;
    width: 0;
    background-color: white;
    transition: width 0.3s ease-in-out;
}

/* Animation trigger on hover */
div.navbar a:hover::after {
    width: 100%;
}

div.navbar a:hover {
    color: #f0f0f0;
}
</style>
</head>

<body>
<h2>
    Feed the <span class="blur-text">Forgotten</span>
</h2>

<!-- Navigation bar -->
<div class="navbar">
    <a href="/">Home</a>&nbsp;&nbsp;
    <a href="TakerRegistration">Customer registration</a>&nbsp;&nbsp;
    <a href="TakerLogin">Customer Login</a>&nbsp;&nbsp;
    <a href="DonourLogin">Admin Login</a>&nbsp;&nbsp;
   
</div>

</body>
</html>
