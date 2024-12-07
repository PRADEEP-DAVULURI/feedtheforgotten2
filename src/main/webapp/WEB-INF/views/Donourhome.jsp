<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <style>
        /* Reset body and html margin and padding */
        body, html {
            height: 100%;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
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

        /* Main content */
        .main-content {
            text-align: center;
            color: white;
            padding-top: 20%;
        }

        h2 {
            font-size: 3em;
            font-weight: bold;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7); /* Adding a shadow to make text stand out */
        }
    </style>
</head>
<body>

    <!-- Video Background -->
    <video autoplay muted loop class="video-background">
        <source src="https://videos.pexels.com/video-files/6185667/6185667-hd_1920_1080_25fps.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>

    <!-- Including the main navigation bar -->
    <%@ include file="Donournavbar.jsp" %><br/><br/>
    
    TotalCustomers:<c:out value="${count}"></c:out>

    <!-- Main content -->
    <div class="main-content">
        <h2>Save Food, Save Lives</h2>
    </div>

</body>
</html>
