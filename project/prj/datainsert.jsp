<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

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
        // Establish database connection
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "ADITYA@a123");

        // Prepare SQL statement
        String sql = "INSERT INTO user (employee_name, start_date, end_date, reason) VALUES (?, ?, ?, ?)";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, employeeName);
        stmt.setString(2, startDate);
        stmt.setString(3, endDate);
        stmt.setString(4, reasonForLeave);

        // Execute SQL statement
        int rowsAffected = stmt.executeUpdate();
        if (rowsAffected > 0) {
            out.println("Employee details stored successfully.");
        } else {
            out.println("Failed to store employee details.");
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // Close resources
        try {
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
