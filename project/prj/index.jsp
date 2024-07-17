<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
       @import url("https://fonts.googleapis.com/css2?family=Open+Sans:wght@200;300;400;500;600;700&display=swap");

       * {
         margin: 0;
         padding: 0;
         box-sizing: border-box;
         font-family: "Open Sans", sans-serif;
       }


       nav{
         display: flex;
         padding:2% 6%;
         justify-content: space-between;
         align-items: center;
       }
       nav img{
         width:150px;
       }
       .nav-links{
         flex:1;
         text-align: right;


       }
       .nav-links ul li{
         list-style:none;
         display: inline-block;
         padding:8px 12px;
         position:relative;


       }
       .nav-links ul li a{
         text-decoration: none;
         color: #fff;
         font-size: 20px;

       }
       .nav-links ul li::after{
         content:'';
         width:0%;
         height:2px;
         background: #FFDF00;
         display:block;
         margin: auto;
         transition: 0.5s;

       }
       .nav-links ul li:hover::after{
         width: 100%;
       }
       body {
         /* display: flex;
         align-items: center;
         justify-content: center;
         min-height: 100vh;
         width: 100%; */
         overflow: hidden;
         background-image: linear-gradient(rgba(4,9,30,0.7),rgba(4,9,30,0.7)),url("down.jpg");
         padding: 0 10px;
         background-position: center;
         background-size: cover;
       }

       body::before {
         content: "";
         position: absolute;
         width: 100%;
         height: 100%;
         /* background-image: linear-gradient(rgba(4,9,30,0.7),rgba(4,9,30,0.7)),url("down.jpg"); */

       }

       .wrapper {
         margin-top: 100px;
         margin-left: 420px;

         width: 600px;
         border-radius: 8px;
         padding: 30px;
         text-align: center;
         border: 1px solid rgba(255, 255, 255, 0.5);
         backdrop-filter: blur(10px);
         -webkit-backdrop-filter: blur(10px);
       }

       form {
         display: flex;
         flex-direction: column;
       }

       h2 {
         font-size: 2rem;
         margin-bottom: 20px;
         color: #fff;
       }

       .input-field {
         position: relative;
         border-bottom: 2px solid #ccc;
         margin: 15px 0;
       }

       .input-field label {
         position: absolute;
         top: 50%;
         left: 0;
         transform: translateY(-50%);
         color: #fff;
         font-size: 16px;
         pointer-events: none;
         transition: 0.15s ease;
       }

       .input-field input {
         width: 100%;
         height: 40px;
         background: transparent;
         border: none;
         outline: none;
         font-size: 16px;
         color: #fff;
       }

       .input-field input:focus~label,
       .input-field input:valid~label {
         font-size: 0.8rem;
         top: 10px;
         transform: translateY(-120%);
       }

       .forget {
         display: flex;
         align-items: center;
         justify-content: space-between;
         margin: 25px 0 35px 0;
         color: #fff;
       }

       #remember {
         accent-color: #fff;
       }

       .forget label {
         display: flex;
         align-items: center;
       }

       .forget label p {
         margin-left: 8px;
       }

       .wrapper a {
         color: #efefef;
         text-decoration: none;
       }

       .wrapper a:hover {
         text-decoration: underline;
       }

       button {
         background: #fff;
         color: #000;
         font-weight: 600;
         border: none;
         padding: 12px 20px;
         cursor: pointer;
         border-radius: 3px;
         font-size: 16px;
         border: 2px solid transparent;
         transition: 0.3s ease;
       }

       button:hover {
         color: #fff;
         border-color: #fff;
         background: rgba(255, 255, 255, 0.15);
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
                            <li><a href="index.html">HOME</a></li>

                            <li><a href="course.html">COURSE</a></li>
                            <li><a href="blog.html">PROFILE</a></li>
                            <li><a href="contact.html">CONTACT</a></li>
                        </ul>
                        </div>
                        <i class="fa fa-bars" onclick="showMenu()"></i>
                    </nav>


                </section>








     <div class="container">

            <div class="wrapper">
                <form action="welcome.jsp" method="post">
                    <div class="input-field">
                        <input type="text" required name="username">
                        <label>Enter your username</label>
                    </div>
                    <div class="input-field">
                        <input type="text" required name="user_mail">
                        <label>Enter your email</label>
                    </div>
                    <div class="input-field">
                        <input type="password" required name="user_pass">
                        <label>Enter your password</label>
                    </div>
                    <div class="forget">
                        <label for="remember">
                            <input type="checkbox" id="remember">
                            <span>Remember me</span>
                        </label>
                        <a href="#">Forgot password?</a>
                    </div>
                    <button type="submit">Log In</button>
                </form>
            </div>
        </div>
</body>
</html>
