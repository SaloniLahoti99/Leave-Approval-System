<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Leave Applications</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-image:url("teacher.jpg");
            background-size:cover;
            background-position:center;
        }
        .container {
            max-width: 800px;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h2 {
            margin-top: 0;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
        td {
            text-align: left;
        }
        .action-btns {
            display: flex;
            justify-content: center;
        }
        .action-btns input[type="submit"] {
            margin: 5px;
            padding: 8px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .action-btns input[type="submit"]:hover {
            background-color: #007bff;
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Leave Applications</h2>
        <table>
            <tr>
                <th>Employee</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Reason</th>
                <th>Action</th>
            </tr>

            <%
                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","ADITYA@a123");
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery("SELECT * FROM user");

                    while (rs.next()) {
                        String employee = rs.getString("employee_name");
                        String startDate = rs.getString("start_date");
                        String endDate = rs.getString("end_date");
                        String reason = rs.getString("reason");

            %>
            <tr>
                <td><%= employee %></td>
                <td><%= startDate %></td>
                <td><%= endDate %></td>
                <td><%= reason %></td>
                <td class="action-btns">

                    <form action="takeAction.jsp" method="post">
                        <input type="hidden" id="fullname" name="employee" value="<%= employee %>">
                        <input type="hidden" id="email" name="startDate" value="<%= startDate %>">
                        <input type="hidden"  name="endDate" value="<%= endDate %>">
                        <input type="submit" name="approve" id="message" value="Approve" onclick="SendMail('Accepted')"  >
                        <input type="submit" name="reject" id="message" value="Reject" onclick="SendMail('Rejected')">
                    </form>
                </td>
            </tr>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    try {
                        if (rs != null) rs.close();
                        if (stmt != null) stmt.close();
                        if (conn != null) conn.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            %>
        </table>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/@emailjs/browser@4/dist/email.min.js"></script>
    <script type="text/javascript">
        (function () {
            emailjs.init({
                publicKey: "MNpt_pIydg9ALSv-f",
            });
        })();

        function SendMail(status) {
            var params = {
                from_name: document.getElementById("fullname").value,
                email_id: document.getElementById("email").value,
                message: document.getElementById("message").value,
                status: status
            };

            emailjs.send("service_ew6h826", "template_k8m45hw", params).then(function (res) {
                alert("Success: " + res.status);
            }).catch(function (error) {
                alert("Error: " + error);
            });
        }
    </script>
</body>
</html>
