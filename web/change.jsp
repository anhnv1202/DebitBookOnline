<%-- 
    Document   : change.jsp
    Created on : Feb 3, 2023, 9:51:38 PM
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
    <link rel="stylesheet" href="./asset/css/HomePage.css">
</head>

<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-6">
                
                <div class="user-infor">


                    <div class="container">
                   <form class="form-infor">     
                <div class="close-x">
                    <div class="row" style="margin: 10px;">
                        <div class="col-1" style="padding: 0;">
                            <div class="x">
                                <button type="button" class="close" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                        </div>
                        <div class="col-11" style="padding:0;">
                            <h5>Close</h5>
                        </div>
                    </div>


                </div>
                        <h4>User Information</h4>
                        <hr>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-default">Full name</span>
                            </div>
                            <input type="text" class="form-control" aria-label="Sizing example input"
                                aria-describedby="inputGroup-sizing-default">
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-default">Phone</span>
                            </div>
                            <input type="text" class="form-control" aria-label="Sizing example input"
                                aria-describedby="inputGroup-sizing-default">
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">@</span>
                            </div>
                            <input type="text" class="form-control" placeholder="Username" aria-label="Username"
                                aria-describedby="basic-addon1">
                        </div>

                        <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="Your email..."
                                aria-label="Recipient's username" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <span class="input-group-text" id="basic-addon2">@example.com</span>
                            </div>
                        </div>




                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Description</span>
                            </div>
                            <textarea class="form-control" aria-label="With textarea"></textarea>
                        </div>
                        <div class="submit-change">
                        <input class="btn btn-primary" type="submit" value="Update">
                    </div>
                      </form> 
                    </div>
                                 
                </div> 
               
    

                

            </div>
<!-- --------------------------------------------------------------------------------------------------------------- -->
            <div class="col-6">
                <div class="change-pass">
                    
                    <div class="user-infor" style="height: 650px;">


                        <div class="container" >
                            <form class="form-change">
                                <h4 style="margin-top: 20px;">Change Password</h4>
                            <hr>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="inputGroup-sizing-default">Account</span>
                                </div>
                                <input type="text" class="form-control" aria-label="Sizing example input"
                                    aria-describedby="inputGroup-sizing-default">
                            </div>
                            
                            
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="inputGroup-sizing-default">Old password</span>
                                </div>
                                <input type="password" class="form-control" aria-label="Sizing example input"
                                    aria-describedby="inputGroup-sizing-default">
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="inputGroup-sizing-default">New password</span>
                                </div>
                                <input type="password" class="form-control" aria-label="Sizing example input"
                                    aria-describedby="inputGroup-sizing-default">
                            </div>
    
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="inputGroup-sizing-default">Reptype password</span>
                                </div>
                                <input type="password" class="form-control" aria-label="Sizing example input"
                                    aria-describedby="inputGroup-sizing-default">
                            </div>
    
                            <div class="container height-30 d-flex justify-content-center align-item
                            s-center"> <div class="position-relative"> 
                                <div class="card p-2 text-center" style="height: 200px;">
                                     <h6>Please enter the one time password <br> to verify your account</h6> 
                                     <div> <span>A code has been sent to</span> 
                                        <small>*******</small> 
                                    </div>
                                     <div id="otp" class="inputs d-flex flex-row justify-content-center mt-2"> 
                                        <input class="m-1 text-center form-control rounded" type="text" id="first" maxlength="1" />
                                         <input class="m-1 text-center form-control rounded" type="text" id="second" maxlength="1" /> 
                                         <input class="m-1 text-center form-control rounded" type="text" id="third" maxlength="1" /> 
                                         <input class="m-1 text-center form-control rounded" type="text" id="fourth" maxlength="1" /> 
                                         <input class="m-1 text-center form-control rounded" type="text" id="fifth" maxlength="1" /> 
                                         <input class="m-1 text-center form-control rounded" type="text" id="sixth" maxlength="1" /> 
                                        </div> <div class="mt-4"> 
                                            <button class="btn btn-danger px-4 validate">Send</button> </div> 
                                        </div> <div class="card-2"> <div class="content d-flex justify-content-center align-items-center"> <span>Didn't get the code</span> <a href="#" class="text-decoration-none ms-3">Resend(1/3)</a> </div> </div> </div>
                        </div>
    
    

                        </div>
                        <div class="submit-change">
                            <input class="btn btn-primary" type="submit" value="Change Password">
                        </div>
                            </form>
 
                    </div>
    
                    
    
                </div>
    
                </div>
            </div>
        </div>
    </div>
    </div>
</body>

</html>
