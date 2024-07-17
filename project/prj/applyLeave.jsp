<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Leave Application Form</title>
    <link rel="stylesheet" href="https://bootswatch.com/4/materia/bootstrap.min.css">
     <link rel="stylesheet" href="college.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.standalone.min.css">
</head>
<style>
.form-control {
    font-size: 16px; /* Increase font size */
    font-weight: bold; /* Make text bold */
    border-radius: 10px; /* Add border radius */
    border: 1px solid #ccc; /* Add border */
    padding: 10px; /* Add padding */
    margin-bottom: 10px; /* Add margin bottom */
}

/* Style the submit button */
.btn-primary {
    font-size: 18px; /* Increase font size */
    font-weight: bold; /* Make text bold */
    border-radius: 10px; /* Add border radius */
    padding: 10px 20px; /* Add padding */
    background-color: #007bff; /* Set background color */
    color: #fff; /* Set text color */
    border: none; /* Remove border */
    cursor: pointer; /* Add cursor pointer */
    transition: background-color 0.3s; /* Add transition */
}

.btn-primary:hover {
    background-color: #0056b3; /* Change background color on hover */
}

</style>
<body>
<section class="sub-header">
        <nav>
            <a href="index.html"><img src="text2.png"></a>
            <div class="nav-links" id="navLinks">
                <i class="fa fa-times" onclick="hideMenu()"></i>
            <ul>
                <li><a href="index.html">HOME</a></li>
                <li><a href="colleges.html">ABOUT</a></li>
                <li><a href="course.html">COURSE</a></li>
                <li><a href="blog.html">BLOG</a></li>
                <li><a href="contact.html">CONTACT</a></li>
            </ul>
            </div>
            <i class="fa fa-bars" onclick="showMenu()"></i>
        </nav>

        <h1>Apply For Leave</h1>
    </section>

    <!-- Form -->
    <div class="container mt-5">
        <form action="submitLeave.jsp" method="post" onsubmit="return validateForm()">

            <div class="row mt-5">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="fullname" style="font-size: 18px;">Name of the Employee</label>
                        <input id="fullname" type="text" class="form-control" placeholder="" name="employeeName" required>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="employeeID" style="font-size: 18px;">Employee ID</label>
                        <input type="text" class="form-control" placeholder="AB123" name="employeeID" pattern="[A-Za-z]{2}\d{3}" title="Enter 2 letters followed by 3 digits" required>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="department" style="font-size: 18px;">Department</label>
                        <select id="department" class="form-control" name="department" required>
                            <option value="">Select Department</option>
                            <option value="CSE">Computer Science and Engineering</option>
                            <option value="Mech">Mechanical Engineering</option>
                            <option value="Civil">Civil Engineering</option>
                            <option value="ENTC">Electronics and Telecommunication</option>
                        </select>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="position" style="font-size: 18px;">Position</label>
                        <select id="position" class="form-control" name="position" required>
                            <option value="">Select Position</option>
                            <option value="Assistant">Assistant</option>
                            <option value="Lab Assistant">Lab Assistant</option>
                            <option value="Lab Attendant">Lab Attendant</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="startDate" style="font-size: 18px;">Start Date</label>
                        <input type="text" class="form-control datepicker" name="startDate" required>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="endDate" style="font-size: 18px;">End Date</label>
                        <input type="text" class="form-control datepicker" name="endDate" required>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="reasonForLeave" style="font-size: 18px;">Reason for Leave</label>
                        <input type="text"id="message" class="form-control" placeholder="" name="reasonForLeave" required>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="contactNumber" style="font-size: 18px;">Contact Number</label>
                        <input type="tel" class="form-control" id="phone" placeholder="" name="contactNumber" required>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="address" style="font-size: 18px;">Address during leave</label>
                        <input id="address" type="text" class="form-control" placeholder="" name="address" required>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="email" style="font-size: 18px;">Email</label>
                        <input id="email" type="email" class="form-control" name="email" placeholder="" required>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="leaveType" style="font-size: 18px;">Type of Leave</label>
                        <select id="leaveType" class="form-control" name="leaveType" required>
                            <option value="">Select Leave Type</option>
                            <option value="Sick Leave">Sick Leave</option>
                            <option value="On Duty Leave">On Duty Leave</option>
                            <option value="Casual Leave">Casual Leave</option>
                        </select>
                    </div>
                </div>
            </div>

            <button type="submit" onclick="SendMail()" class="btn btn-primary">Submit</button>
        </form>
    </div>
    <!-- End Form -->

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
    <script>
        $(document).ready(function () {
            $('.datepicker').datepicker({
                format: 'yyyy-mm-dd'
            });
        });

        function validateForm() {
            var startDate = document.forms["myForm"]["startDate"].value;
            var endDate = document.forms["myForm"]["endDate"].value;
            if (startDate > endDate) {
                alert("End date must be after start date");
                return false;
            }
        }
    </script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/@emailjs/browser@4/dist/email.min.js">
        </script>

        <script type="text/javascript">
            (function () {
                emailjs.init({
                    publicKey: "MNpt_pIydg9ALSv-f",
                });
            })();

            function SendMail() {
                var params = {
                    from_name: document.getElementById("fullname").value,
                    email_id: document.getElementById("email").value,
                    message: document.getElementById("message").value
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
