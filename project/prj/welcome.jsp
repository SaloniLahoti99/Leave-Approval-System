<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>

</head>
<body>
    <div class="container">

        <% String role = request.getParameter("username");
           if (role.equals("employee")) { %>
            <!DOCTYPE html>
            <html lang="en">
            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>
                <title>DKTE</title>
                <link rel="stylesheet" href="college.css">
                <link rel="preconnect" href="https://fonts.googleapis.com">
            <!-- <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Platypi:ital,wght@0,300..800;1,300..800&family=Playfair+Display:ital,wght@0,400..900;1,400..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.2/css/fontawesome.min.css"> -->



            </head>
            <body>
                <section class="header">
                    <nav>
                        <a href="college.html"><img src="text2.png"></a>
                        <div class="nav-links" id="navLinks">
                            <i class="fa fa-times" onclick="hideMenu()"></i>
                        <ul>
                            <li><a href="college.html">HOME</a></li>
                            <li><a href="index.html">LOGOUT</a></li>
                            <li><a href="course.html">COURSE</a></li>
                            <li><a href="blog.html">PROFILE</a></li>
                            <li><a href="contact.html">CONTACT</a></li>
                        </ul>
                        </div>
                        <i class="fa fa-bars" onclick="showMenu()"></i>
                    </nav>

                    <div class="text-box">
                        <h1>WELCOME TO DKTE'S <br> LEAVE PORTAL</h1>
                        <p>
                            Welcome to the Leave Portal, your go-to platform for managing all your time-off needs efficiently and effortlessly.<br> Please explore its intuitive features to plan your perfect time away from work!
                        </p>
                        <div>
                            <a href="applyLeave.jsp" class="hero-btn">Apply For Leave</a>

                        </div>

                    </div>

                </section>


                <script>
                    var navLinks=document.getElementById("navLinks");
                    function showMenu(){
                        navLinks.style.right="0";
                    }
                    function hideMenu(){

                        navLinks.style.right="-200px";
                    }
                 </script>
                <script src="https://kit.fontawesome.com/4466ac27e7.js" >

                </script>

            </body>
            </html>
        <% } else if (role.equals("HOD")){ %>
            <!DOCTYPE html>
            <html lang="en">
            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>
                <title>DKTE</title>
                <link rel="stylesheet" href="college.css">
                <link rel="preconnect" href="https://fonts.googleapis.com">
            <!-- <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Platypi:ital,wght@0,300..800;1,300..800&family=Playfair+Display:ital,wght@0,400..900;1,400..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.2/css/fontawesome.min.css"> -->



            </head>
            <body>
                <section class="header">
                    <nav>
                        <a href="college.html"><img src="text2.png"></a>
                        <div class="nav-links" id="navLinks">
                            <i class="fa fa-times" onclick="hideMenu()"></i>
                        <ul>
                            <li><a href="college.html">HOME</a></li>
                            <li><a href="colleges.html">LOGOUT</a></li>
                            <li><a href="course.html">COURSE</a></li>
                            <li><a href="blog.html">PROFILE</a></li>
                            <li><a href="contact.html">CONTACT</a></li>
                        </ul>
                        </div>
                        <i class="fa fa-bars" onclick="showMenu()"></i>
                    </nav>

                    <div class="text-box">
                        <h1>WELCOME TO DKTE'S <br> LEAVE PORTAL</h1>
                        <p>
                            Welcome to the Leave Portal, your go-to platform for managing all your time-off needs efficiently and effortlessly.<br> Please explore its intuitive features to plan your perfect time away from work!
                        </p>
                        <div>

                            <a href="viewLeave.jsp" class="hero-btn">View Leaves</a>

                        </div>

                    </div>

                </section>


                <script>
                    var navLinks=document.getElementById("navLinks");
                    function showMenu(){
                        navLinks.style.right="0";
                    }
                    function hideMenu(){

                        navLinks.style.right="-200px";
                    }
                 </script>
                <script src="https://kit.fontawesome.com/4466ac27e7.js" >

                </script>

            </body>
            </html>
        <% } %>

    </div>
</body>
</html>
