<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Status</title>
<style>
    body {
        font-family: Arial, sans-serif;
        text-align: center;
        background-color: #f5f5f5;
    }

    .message-container {
        margin-top: 50px;
    }

    .error {
        font-size: 2rem;
        font-weight: bold;
        color: red;
        margin-bottom: 20px;
    }

    a {
        display: inline-block;
        margin-top: 30px;
        padding: 10px 20px;
        background-color: #007bff;
        color: white;
        text-decoration: none;
        font-size: 1.2rem;
        border-radius: 5px;
        transition: background-color 0.3s;
    }

    a:hover {
        background-color: #0056b3;
    }

    iframe {
        border: none;
        width: 100%;
        max-width: 400px;
        height: 400px;
        margin: auto;
    }
</style>
</head>
<body>

<div class="message-container">
    <!-- Error Message -->
    
    <p>${message}</p>
    
    <div class="error">Donor Login Failed!</div>

    <!-- Suggestion to retry -->
    <p>Please check your credentials and try again.</p>

    <!-- Retry Login Link -->
    <a href="DonourLogin">Retry Login</a>
</div>

</body>
</html>
