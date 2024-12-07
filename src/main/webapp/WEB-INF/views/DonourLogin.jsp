<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
    /* Reset body and html margin and padding */
    body, html {
        height: 100%;
        margin: 0;
        padding: 0;
    }

    /* Video background */
    .video-background {
        position: fixed; /* Ensures video is fixed behind the content */
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        object-fit: cover; /* Ensures the video covers the entire screen */
        z-index: -1; /* Ensures the video stays behind other content */
    }

    /* Container for the form */
    .container {
        width: 50%;
        margin: 50px auto;
        padding: 20px;
        border-radius: 15px;
        background: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        animation: shiny-effect 6s infinite alternate;
        transition: transform 0.7s, background 0.7s;
        position: relative; /* Keeps the container above the video */
    }

    .container:hover {
        transform: scale(1.02);
        background: rgba(255, 255, 255, 0.9);
    }

    form {
        padding: 20px;
    }

    label {
        font-weight: bold;
        margin-bottom: 10px;
        display: block;
    }

    input[type="text"], input[type="email"], input[type="password"], input[type="date"], input[type="number"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border-radius: 8px;
        border: 1px solid #ccc;
    }

    .btn {
        padding: 10px 20px;
        border-radius: 8px;
        cursor: pointer;
        font-weight: bold;
    }

    .btn-success {
        background: #28a745;
        color: white;
        border: none;
    }

    .btn-success:hover {
        background: #218838;
    }

    @keyframes shiny-effect {
        0% {
            background-position: 0% 50%;
        }
        100% {
            background-position: 100% 50%;
        }
    }
</style>
</head>
<body>

<!-- Video Background -->
<video autoplay muted loop class="video-background">
    <source src="https://videos.pexels.com/video-files/7362582/7362582-sd_640_360_24fps.mp4" type="video/mp4">
    Your browser does not support the video tag.
</video>

<%@include file="mainnavbar.jsp" %>
<h3 align="center">Donor Login Form</h3>

<div class="container">
   <form method="post" action="checkDonourLogin">
        <label>Enter Username </label>
        <input type="text" class="form-control" name="duname" required/>
        <br/>

        <label>Enter Password</label>
        <input type="password" name="dpassword" class="form-control" required/>
        <br/>

        <input type="submit" value="Login" class="btn btn-success"/>
        <input type="reset" value="Clear" class="btn btn-success"/>
    </form>
</div>

</body>
</html>
