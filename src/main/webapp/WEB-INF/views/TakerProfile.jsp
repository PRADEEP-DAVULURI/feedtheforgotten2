<%@page import="com.klef.jfsd.springboot.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Customer c = (Customer) session.getAttribute("customer");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Taker Profile</title>
    <style>
        /* General page styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(45deg, black, #2575fc);
            color: #fff;
        }

        h3 {
            text-align: center;
            color: #fff;
        }

        /* Profile container styling */
        .profile-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            background: linear-gradient(to right, #00BCF2, #008294);
            border-radius: 10px;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.1);
        }

        .profile-container h3 {
            margin-bottom: 20px;
        }

        .profile-details {
            font-size: 18px;
            line-height: 1.8;
        }

        .profile-details span {
            font-weight: bold;
        }

        .welcome-image {
            display: block;
            margin: 20px auto;
            width: 80px;
            height: 80px;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            .profile-container {
                padding: 20px;
            }

            .profile-details {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>
    <%@include file="Takernavbar.jsp" %>
    <div class="profile-container">
        <h3>My Profile</h3>
        <img class="welcome-image" src="https://cdn-icons-gif.flaticon.com/7158/7158877.gif" alt="Welcome Animation">
        <div class="profile-details">
            <p><span>ID:</span> <%= c.getId() %></p>
            <p><span>Name:</span> <%= c.getName() %></p>
            <p><span>Gender:</span> <%= c.getGender() %></p>
            <p><span>Date of Birth:</span> <%= c.getDateofbirth() %></p>
            <p><span>Email:</span> <%= c.getEmail() %></p>
            <p><span>Location:</span> <%= c.getLocation() %></p>
            <p><span>Contact:</span> <%= c.getContactno() %></p>
        </div>
    </div>
    <%@include file="footer.jsp" %>
</body>
</html>
