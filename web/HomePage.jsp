<%-- 
    Document   : HomePage
    Created on : Feb 3, 2023, 9:54:39 PM
    Author     : phanv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="stylesheet" href="./asset/css/HomePage.css">
</head>

<body>
    
    <img src="era-of-online-accounting-software-for-small-business-1582100462170148143462.jpg" alt=""
        style="transform: scale(1.5,1.4) ">
    <header>

        <div class="row">
            <div class="fixed-top">

                <div class="wraper">
                    <div class="sidebar">

                        <div class="profile">
                            <img src="./img/logo.png" alt="profile image">
                            <h3>ODB Tín Dụng</h3>
                            <p>Sổ ghi nợ ONLINE</p>
                        </div>
                        <!-- side menu bar -->
                        <ul>
                            <li><a href="#">
                                    <span class="icon"><i class="fas fa-home"></i></span>
                                    <span class="Item">Trang chủ</span></a>
                            </li>
                            <li><a href="#">
                                    <span class="icon"><i class="fas fa-desktop"></i></span>
                                    <span class="Item">Dịch vụ</span></a>
                            </li>

                            <li><a href="#">
                                    <span class="icon"><i class="fas fa-user-shield"></i></span>
                                    <span class="Item">Admin</span></a>
                            </li>
                            <li><a href="#">
                                    <span class="icon"><i class="fas fa-cog"></i></span>
                                    <span class="Item">Setting</span></a>
                            </li>

                        </ul>
                    </div>
                    <!-- top menu bar -->
                    <div class="section">
                        <div class="row"></div>
                        <div class="top_navbar">

                            <div class="col-6">
                                <div class="hamburger">
                                    <a href="#">
                                        <i class="fas fa-bars"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="d-f" style="text-align: end;">
                                    
                                    <div class="dropdown">
                                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                         Loggin as:
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                          <a class="dropdown-item" href="#">A</a>
                                          <a class="dropdown-item" href="#">B</a>
                                          <a class="dropdown-item" href="#">C</a>
                                        </div>
                                            
                                    </div>
                                    <script>
                                            $(document).ready(function() {
                                              $('.dropdown-toggle').dropdown();
                                            });
                                    </script>






                                </div>
                            </div>
                        </div>

                        <!-- <a class="navbar-brand " href="#">
                <img src="logo1.png" width="auto" height="50" alt=" Logo" class="navbar-brand-full">
            </a> -->

                    </div>


                </div>

                <div class="container"
                    style="margin-top: 50px ; background-color: rgb(5,68,104); text-align: center;font-weight: 400; font-size: 30px; box-shadow: 2px 2px 2px 1px rgba(0, 0, 0, 0.2);font-family: 'open sans ', sans-serif;color: aliceblue;">
                    <p style="font-style: italic;">Chào mừng bạn đến với ODB </p>
                </div>

    </header>
</body>
<script src="node_modules/jquery/dist/jquery.min.js"></script>
<script src="node_modules/popper.js/dist/popper.min.js"> </script>
<script src="./asset/js/screen.js"></script>

</html>
