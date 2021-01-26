<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html lang="en">
            <head>
                <title>Login V4</title>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <!--===============================================================================================-->
                <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
                <!--===============================================================================================-->
                <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
                <!--===============================================================================================-->
                <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
                <!--===============================================================================================-->
                <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
                <!--===============================================================================================-->
                <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
                <!--===============================================================================================-->
                <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
                <!--===============================================================================================-->
                <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
                <!--===============================================================================================-->
                <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
                <!--===============================================================================================-->
                <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
                <!--===============================================================================================-->
                <link rel="stylesheet" type="text/css" href="css/util.css">
                <link rel="stylesheet" type="text/css" href="css/main.css">
                <!--===============================================================================================-->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

            </head>
            <body>

                <div class="limiter">
                    <div class="container-login100" style="background-image: url('images/bg-01.jpg');">
                        <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
                            <form action="${pageContext.request.contextPath}/register-owner" method="post" class="login100-form validate-form">

                                <span class="login100-form-title p-b-39">
                                    Register as restaurant owner
                                </span>
                                <span class="login100-form-title p-b-39 text-left" style="font-size: 20px;">
                                    Step 1: Personal Information
                                </span>
                                <div class="wrap-input100 validate-input m-b-23" data-validate="Email is required">
                                    <span class="label-input100">Email</span>
                                    <input class="input100" type="text" id="email" name="email" placeholder="Type your Email">
                                    <span class="focus-input100" data-symbol="&#xf206;"></span>
                                </div>

                                <div class="wrap-input100 validate-input m-b-23" data-validate="Name is required">
                                    <span class="label-input100">Name</span>
                                    <input class="input100" type="text" id="name" name="name" placeholder="Type your name">
                                    <span class="focus-input100" data-symbol="&#xf206;"></span>
                                </div>

                                <div class="wrap-input100 validate-input" data-validate="Password is required">
                                    <span class="label-input100">Password</span>
                                    <input class="input100" type="password" id="password" name="password" placeholder="Type your password">
                                    <span class="focus-input100" data-symbol="&#xf190;"></span>
                                </div>

                                <span class="login100-form-title p-b-39 p-t-39 text-left" style="font-size: 20px;">
                                    Step 2: Restaurant Information
                                </span>

                                <div class="wrap-input100 validate-input m-b-23" data-validate="Restaurant Name is required">
                                    <span class="label-input100">Restaurant Name</span>
                                    <input class="input100" type="text" id="restaurantName" name="restaurantName" placeholder="Type your restaurant name">
                                    <span class="focus-input100" data-symbol="&#xf206;"></span>
                                </div>
                                <div class="wrap-input100 validate-input m-b-23" data-validate="Phone number is required">
                                    <span class="label-input100">Phone Number</span>
                                    <input class="input100" type="text" id="phone" name="phone" placeholder="Type your phone number">
                                    <span class="focus-input100" data-symbol="&#xf206;"></span>
                                </div>
                                <span class="label-input100">Location</span>
                                <select class="form-select m-t-15" aria-label="Default select example" name="location">
                                    <option selected>Select Location</option>
                                    <c:forEach var="location" items="${locationList}">
                                        <option value="${location.getLocation_id()}">${location.getLocation_name()}</option>
                                    </c:forEach>
                                </select>

                                <span class="label-input100">Location</span>
                                <select class="form-select m-t-15" aria-label="Default select example" name="category">
                                    <option selected>Select Category</option>
                                    <c:forEach var="category" items="${categoryList}">
                                        <option value="${category.getCategory_id()}">${category.getCategory_name()}</option>
                                    </c:forEach>
                                </select>
                                
                                <div class="wrap-input100 m-b-23 p-t-20" >

                                </div>

                                <div class="container-login100-form-btn p-t-39">
                                    <div class="wrap-login100-form-btn">
                                        <div class="login100-form-bgbtn"></div>
                                        <button class="login100-form-btn">
                                            Register
                                        </button>
                                    </div>
                                </div>


                                <div class="flex-col-c p-t-40">

                                    <a href="${pageContext.request.contextPath}/register-owner" class="txt2">
                                        Register as customer
                                    </a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>


                <div id="dropDownSelect1"></div>

                <!--===============================================================================================-->
                <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
                <!--===============================================================================================-->
                <script src="vendor/animsition/js/animsition.min.js"></script>
                <!--===============================================================================================-->
                <script src="vendor/bootstrap/js/popper.js"></script>
                <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
                <!--===============================================================================================-->
                <script src="vendor/select2/select2.min.js"></script>
                <!--===============================================================================================-->
                <script src="vendor/daterangepicker/moment.min.js"></script>
                <script src="vendor/daterangepicker/daterangepicker.js"></script>
                <!--===============================================================================================-->
                <script src="vendor/countdowntime/countdowntime.js"></script>
                <!--===============================================================================================-->
                <script src="js/main.js"></script>

            </body>
        </html>