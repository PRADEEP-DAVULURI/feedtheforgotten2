<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <style>
        /* Adding style for the table */
        table {
            width: 80%;
            margin: 30px auto;
            border-collapse: collapse;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table th, table td {
            padding: 12px 20px;
            text-align: center;
            border: 1px solid #e0e0e0;
            background-color: rgba(255, 255, 255, 0.9); /* Translucent background */
        }

        table th {
            background-color: white; /* Slightly darker translucent background for headers */
            color: #333;
        }

        table td {
            color: #555;
        }

        /* Optional: Adding hover effect for rows */
        table tr:hover {
            background-color: rgba(0, 0, 0, 0.05);
        }
    </style>
</head>
<body>
    <!-- Including the main navigation bar -->
    <%@ include file="Donournavbar.jsp" %>

    <!-- Main content -->
    <h2>Save Food, Save Lives</h2>
    
    <h3 align="center">View All Takers</h3>
    <table>
    <tr>
    <th>ID</th>
    <th>NAME</th>
    <th>GENDER</th>
    <th>DATE OF BIRTH</th>
    <th>EMAIL</th>
    <th>LOCATION</th>
    <th>CONTACT</th>
    </tr>
    
    <c:forEach items="${customerlist}" var="customer">
    <tr>
    <td><c:out value="${customer.id}"></c:out></td>
    <td><c:out value="${customer.name}"></c:out></td>
    <td><c:out value="${customer.gender}"></c:out></td>
    <td><c:out value="${customer.dateofbirth}"></c:out></td>
    <td><c:out value="${customer.email}"></c:out></td>
    <td><c:out value="${customer.location}"></c:out></td>
    <td><c:out value="${customer.contactno}"></c:out></td>
    </tr>
    </c:forEach>
    
    </table>
    
</body>
</html>
