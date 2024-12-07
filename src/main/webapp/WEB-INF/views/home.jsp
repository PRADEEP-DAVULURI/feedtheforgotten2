<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <style>
        /* General Styling */
        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #ffafbd, #ffc3a0);
            color: #333;
        }

        h2 {
            text-align: center;
            margin: 20px 0;
            font-size: 3em;
            color: #2c3e50;
            text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.2);
        }

        .features-section {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            margin: 30px;
        }

        .feature-card {
            width: 300px;
            margin: 20px;
            padding: 20px;
            border-radius: 15px;
            background: #ffffff;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
        }

        .feature-icon {
            font-size: 50px;
            color: #e67e22;
            text-align: center;
        }

        .feature-title {
            text-align: center;
            margin-top: 10px;
            font-size: 1.5em;
            font-weight: bold;
        }

        .feature-description {
            text-align: center;
            margin-top: 10px;
            color: #555;
            font-size: 1em;
        }

        .cta-section {
            text-align: center;
            margin-top: 50px;
        }

        .cta-button {
            padding: 15px 30px;
            font-size: 1.2em;
            color: white;
            background-color: #e67e22;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            text-transform: uppercase;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .cta-button:hover {
            background-color: #d35400;
            transform: translateY(-5px);
        }
    </style>
</head>
<body>
    <!-- Including the main navigation bar -->
    <%@ include file="mainnavbar.jsp" %>

    <!-- Main content -->
    <h2>Save Food, Save Lives</h2>

    <!-- Features Section -->
    <div class="features-section">
        <div class="feature-card">
            <div class="feature-icon">🍴</div>
            <div class="feature-title">Donate Food</div>
            <div class="feature-description">Help reduce food waste by donating excess food to those in need through our platform.</div>
        </div>
        <div class="feature-card">
            <div class="feature-icon">📍</div>
            <div class="feature-title">Locate Donations</div>
            <div class="feature-description">Find nearby food donation centers and track ongoing initiatives in your city.</div>
        </div>
        <div class="feature-card">
            <div class="feature-icon">🌍</div>
            <div class="feature-title">Global Impact</div>
            <div class="feature-description">Join our global community to save food and create a sustainable future.</div>
        </div>
    </div>

    <!-- Call to Action Section -->
    <div class="cta-section">
        <button class="cta-button" onclick="window.location.href='register.jsp'">Join the Cause</button>
    </div>
</body>
</html>
