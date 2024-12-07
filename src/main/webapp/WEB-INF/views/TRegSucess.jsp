<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Success</title>
<style>
    body {
        font-family: Arial, sans-serif;
        text-align: center;
        background-color: #f5f5f5;
    }

    .message-container {
        margin-top: 50px;
    }

    .thank-you {
        font-size: 2.5rem;
        font-weight: bold;
        margin-top: 20px;
        color: #333;
    }

    .celebration-text {
        font-size: 1.5rem;
        color: #555;
    }

    a {
        display: inline-block;
        margin-top: 30px;
        padding: 10px 20px;
        background-color: #28a745;
        color: white;
        text-decoration: none;
        font-size: 1.2rem;
        border-radius: 5px;
        transition: background-color 0.3s;
    }

    a:hover {
        background-color: #218838;
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
    <!-- Embedding the animation using an iframe -->
    <iframe src="https://embed.lottiefiles.com/animation/143072" allow="autoplay"></iframe>

    <!-- Welcome Message -->
    <div class="thank-you">Welcome!</div>
    <div class="celebration-text">Thank You for Registering! 🎉</div>

    <!-- Login Link -->
    <a href="TakerLogin">Login Here</a>
</div>

</body>
</html>
