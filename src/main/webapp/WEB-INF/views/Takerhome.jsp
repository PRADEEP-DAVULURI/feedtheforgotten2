<%@page import="com.klef.jfsd.springboot.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Customer c = (Customer)session.getAttribute("customer");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Taker Dashboard</title>
    <style>
        /* General page styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(45deg, black, #2575fc); /* Gradient background */
            color: #fff;
        }

        h1, h2 {
            text-align: center;
            color: #fff;
        }

        /* Welcome banner styling */
        .welcome-banner {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 20px;
            margin-bottom: 40px;
        }

        .welcome-banner h1 {
            font-size: 60px;
            margin: 0;
            padding: 10px 20px;
            background: white; /* Updated padding background */
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            animation: fadeIn 2s ease-in-out;
        }

        .welcome-banner img {
            margin-left: 20px;
            width: 80px;
            height: 80px;
            animation: bounce 2s infinite;
        }

        /* Keyframe animations */
        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: translateY(-20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes bounce {
            0%, 20%, 50%, 80%, 100% {
                transform: translateY(0);
            }
            40% {
                transform: translateY(-20px);
            }
            60% {
                transform: translateY(-10px);
            }
        }

        /* Container for main content */
        .container {
            max-width: 1000px;
            margin: 50px auto;
            padding: 50px 30px; /* Increased padding */
            background:Linear-gradient(to right,#00BCF2,#008294); /* Slight transparency */
            border-radius: 10px;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.1);
        }

        h2 {
            font-size: 30px;
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
            margin-bottom: 30px;
            text-align: center;
            font-weight: 400;
        }

        .donation-list {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .donation-list li {
            background-color: #ffffff;
            color: #333;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
        }

        .donation-list li:hover {
            transform: translateY(-10px);
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.15);
        }

        .cta-btn {
            display: inline-block;
            margin: 30px auto;
            padding: 12px 30px;
            background-color: #e74c3c;
            color: #fff;
            font-size: 20px;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .cta-btn:hover {
            background-color: #c0392b;
        }

        .request-form {
            margin-top: 30px;
            padding: 20px;
            background-color: lightgrey;
            border-radius: 10px;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.1);
        }

        .request-form label {
            display: block;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .request-form select, .request-form textarea {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ddd;
            background-color:white;
        }

        .request-form button {
            padding: 12px 25px;
            background-color: #2ecc71;
            color: #fff;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .request-form button:hover {
            background-color: #27ae60;
        }

        /* Add responsive design */
        @media (max-width: 768px) {
            .donation-list {
                grid-template-columns: 1fr;
            }

            .welcome-banner h1 {
                font-size: 40px;
                background-color:white;
            }

          .welcome-banner img {
           width: 60px;
           height: 60px;
           background-color: white; /* Updated background color */
           border-radius: 70%; /* Optional: make the background circular */
           padding: 2px; /* Add some spacing inside the background */
        }
        }
    </style>
</head>
<body>

<%@include file="Takernavbar.jsp" %><br/><br/>
    <!-- Welcome Banner -->
    <div class="welcome-banner">
    
        <h1>Welcome <%=c.getName()%></h1>
        <img src="https://cdn-icons-gif.flaticon.com/7158/7158877.gif" alt="Welcome Animation">
    </div>

    <!-- Main content -->
    <div class="container">
        <h2>Your Dashboard</h2>
        <p>As a Taker, you can view available donations and request food from the Donors below. Select a donation and submit your request!</p>

        <!-- Active Donations from Donors -->
        <h3>Active Donations</h3>
        <ul class="donation-list">
            <!-- Example donations, should be dynamically populated from your database -->
            <li>
                <h4>Food Package A</h4>
                <p>10 kg of rice</p>
                <p>Donor: John Doe</p>
                <p>Status: <strong>Available</strong></p>
                <form action="acceptDonation.jsp" method="post">
                    <input type="hidden" name="donationId" value="1">
                    <button type="submit">Accept Donation</button>
                </form>
            </li>
            <li>
                <h4>Food Package B</h4>
                <p>5 kg of vegetables</p>
                <p>Donor: Alice Smith</p>
                <p>Status: <strong>Available</strong></p>
                <form action="acceptDonation.jsp" method="post">
                    <input type="hidden" name="donationId" value="2">
                    <button type="submit">Accept Donation</button>
                </form>
            </li>
            <li>
                <h4>Food Package C</h4>
                <p>3 kg of fruits</p>
                <p>Donor: Bob Brown</p>
                <p>Status: <strong>Available</strong></p>
                <form action="acceptDonation.jsp" method="post">
                    <input type="hidden" name="donationId" value="3">
                    <button type="submit">Accept Donation</button>
                </form>
            </li>
        </ul>

        <!-- Request Form -->
        <div class="request-form">
            <h3>Submit Your Request</h3>
            <form action="submitRequest.jsp" method="post">
                <label for="donationId">Select Donation:</label>
                <select name="donationId" id="donationId">
                    <!-- Example options, should be populated dynamically from the database -->
                    <option value="1">Food Package A - 10 kg of rice</option>
                    <option value="2">Food Package B - 5 kg of vegetables</option>
                    <option value="3">Food Package C - 3 kg of fruits</option>
                </select>

                <label for="requestMessage">Additional Request Message:</label>
                <textarea name="requestMessage" id="requestMessage" rows="4" placeholder="Add any additional message or dietary preferences..."></textarea>

                <button type="submit">Submit Request</button>
            </form>
        </div>
    </div>

    <%@include file="footer.jsp" %>
</body>
</html>
