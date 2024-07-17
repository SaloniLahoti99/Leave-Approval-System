<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Action Status</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            max-width: 600px;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h2 {
            margin-top: 0;
        }
        p {
            margin-top: 10px;
            margin-bottom: 20px;
        }
        a {
            color: #007bff;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Action Status</h2>
        <%
            String action;
            if (request.getParameter("approve") != null) {
                action = "Approved";
            } else {
                action = "Rejected";
            }
        %>
        <p>Leave application for <%= request.getParameter("employee") %> from <%= request.getParameter("startDate") %> to <%= request.getParameter("endDate") %> <%= action %>.</p>
        <a href="viewLeave.jsp">Back to Leave Applications</a>
    </div>
</body>
</html>
