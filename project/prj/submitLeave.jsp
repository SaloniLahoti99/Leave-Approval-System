<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="college.css">
    <title>Submit Leave</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-image:url("down.jpg");
            background-size:cover;
            background-position:center;
        }
        .container {
            max-width: 600px;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: left;
            font-weight:900;
        }
        .container{
         background-color:#ddffdf;
         opacity:0.8;
        }
        h2 {
            margin-top: 0;
        }
        p {
            margin-top: 10px;
            margin-bottom: 10px;
        }
    </style>
</head>

    <body>



    <section class="header">
            <nav>
                <a href="college.html"><img src="text2.png"></a>
                <div class="nav-links" id="navLinks">
                    <i class="fa fa-times" onclick="hideMenu()"></i>
                <ul>
                    <li><a >HOME</a></li>
                    <li><a href="index.html">LOGOUT</a></li>
                    <li><a href="course.html">COURSE</a></li>
                    <li><a href="blog.html">BLOG</a></li>
                    <li><a href="contact.html">CONTACT</a></li>
                </ul>
                </div>
                <i class="fa fa-bars" onclick="showMenu()"></i>
            </nav>


<div class="text-box">
            <h1>Submitted Successfully</h1>
            <h3>
                Leave Portal, your go-to platform for managing all your time-off needs efficiently and effortlessly.<br> Please explore its intuitive features to plan your perfect time away from work!
            </h3>
            <a href="index.html" class="hero-btn">LOGOUT</a>
        </div>



        </section>







        <div class="container">
            <h2>Submit Leave</h2>
            <%
                // Retrieve form data
                String employeeName = request.getParameter("employeeName");
                String employeeID = request.getParameter("employeeID");
                String department = request.getParameter("department");
                String position = request.getParameter("position");
                String startDate = request.getParameter("startDate");
                String endDate = request.getParameter("endDate");
                String reasonForLeave = request.getParameter("reasonForLeave");
                String contactNumber = request.getParameter("contactNumber");
                String address = request.getParameter("address");
                String email = request.getParameter("email");

                Connection conn = null;
                PreparedStatement stmt = null;

                try {

                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "ADITYA@a123");


                    String sqlInsert = "INSERT INTO user (employee_name, start_date, end_date, reason) VALUES (?, ?, ?, ?)";
                    stmt = conn.prepareStatement(sqlInsert);
                    stmt.setString(1, employeeName);
                    stmt.setString(2, startDate);
                    stmt.setString(3, endDate);
                    stmt.setString(4, reasonForLeave);


                    int rowsAffected = stmt.executeUpdate();


                    if (rowsAffected > 0) {
                        out.println("Employee details stored successfully.");
                    } else {
                        out.println("Failed to store employee details.");
                    }

                } catch (SQLException se) {

                    se.printStackTrace();
                    out.println("SQL Error: " + se.getMessage());
                } catch (ClassNotFoundException cnfe) {

                    cnfe.printStackTrace();
                    out.println("Class Not Found Error: " + cnfe.getMessage());
                } catch (Exception e) {

                    e.printStackTrace();
                    out.println("An error occurred: " + e.getMessage());
                } finally {

                    try {
                        if (stmt != null) stmt.close();
                        if (conn != null) conn.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                        out.println("Error closing database connection: " + e.getMessage());
                    }
                }
            %>
            <p>Your leave application will be reviewed by your HOD.</p>
        </div>


</body>

</html>
