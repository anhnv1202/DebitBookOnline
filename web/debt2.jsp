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
         <link rel="stylesheet" href="./icon/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="./asset/css/HomePage.css">      
        <link rel="stylesheet" href="./asset/css/addDebtor.css">
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
                            <!--                             side menu bar -->
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
                        <!--                         top menu bar -->
                        <div class="section">

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
                                            <button class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Login As: ${sessionScope.username}
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#">Option 1</a>
                                                <a class="dropdown-item" href="#">Option 2</a>
                                                <a class="dropdown-item" href="logout">Logout</a>
                                            </div>
                                        </div>
                                    </div>                               
                                </div>


                            </div>
                        </div>                                
                    </div>    

                    <div class="container" style="margin:auto">
                        <div class="card" style="margin-top: 10px; ">
                            <div class="card-header">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="left">
                                            <h3 class="mb-0 ">Danh sách người nợ</h3>
                                            <p class="small text-muted m-0">Total: </p>
                                        </div>
                                    </div>
                                    <div class="col-6" style="text-align: end">
                                        <!--                                         Button to trigger the modal -->
                                       <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#themnguoino">
                                            <i class="fa fa-plus-square" aria-hidden="true"></i> 
                                            Thêm người nợ</button>
                                        
                                    </div>
                                </div>
                            </div>

                            <div class="card-body">
                                <div class="row">


                                    <div class="table-responsive">
                                        <table class="table table-bordered table-striped">

                                            <thead >

                                                <tr >

                                                    <th class="col-1">Id</th>
                                                    <th class="col-1">Name</th>
                                                    <th class="col-1">Địa chỉ</th>
                                                    <th class="col-1">SDT</th>
                                                    <th class="col-1">Email</th>
                                                    <th class="col-1">Tổng nợ</th>
                                                    <th class="col-1">Ngày tạo</th>
                                                    <th class="col-1">Cập nhật</th>
                                                    <th class="col-4">Action</th>

                                                </tr>

                                            </thead>
                                            <tbody>

                                                <tr>
                                                    <!--                                                    /*----------------------------*/-->
                                                    <td>  

                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <input placeholder="From" type="text" class="form-control" value="">
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <input placeholder="To" type="text" class="form-control" value="">
                                                            </div>
                                                        </div>

                                                    </td>
                                                    <!--                                                    /*----------------------------*/-->
                                                    <td>

                                                        <input type="text" value="" style="width: 100%;">

                                                    </td>
                                                    <!--                                                    /*----------------------------*/-->


                                                    <td>

                                                        <input type="text" value="" style="width: 100%;">

                                                    </td>
                                                    <!--                                                    /*----------------------------*/-->
                                                    <td>

                                                        <input type="text" value="" style="width: 100%;">

                                                    </td>
                                                    <!--                                                    /*----------------------------*/-->
                                                    <td>

                                                        <input type="text" value="" style="width: 100%;">

                                                    </td>
                                                    <!--                                                    /*----------------------------*/-->
                                                    <td>
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <input placeholder="From" type="text" class="form-control" value="">
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <input placeholder="To" type="text" class="form-control" value="">
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <!--                                                    /*----------------------------*/-->
                                                    <td>
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <input placeholder="From" type="text" class="form-control" value="">
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <input placeholder="To" type="text" class="form-control" value="">
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <!--                                                    /*----------------------------*/-->
                                                    <td>  

                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <input placeholder="From" type="text" class="form-control" value="">
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <input placeholder="To" type="text" class="form-control" value="">
                                                            </div>
                                                        </div>

                                                    </td>

                                                    <td  style="padding-bottom: 4px">


                                                        <button type="button" class="btn btn-outline-danger btn-block">Clear filter</button>


                                                        <button type="button" class="btn btn-outline-primary btn-block">Hide &gt;&gt;</button>
                                                    </td> 

                                                </tr>
                                                <tr>
                                                    <td>1</td><td>Rahul</td><td>23</td><td>23</td><td>23</td><td>23</td><td>23</td><td>23</td>

                                                    <td style="text-align: center">

                                                        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#exampleModal">
                                                            Chi tiết 
                                                        </button>


                                                       <button type="button" class="btn btn-info" data-toggle="modal" data-target="#themphieuno">
                                                            <i class="fa fa-address-card-o" aria-hidden="true"></i>  Thêm phiếu nợ</button>
                                                            
                                                       <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#sua">
                                                            <i class="fa fa-wrench" aria-hidden="true"></i> Sửa</button>
                                                       
                                                    </td>
                                                </tr> 
                                            </tbody>

                                        </table>
                                    </div>      

                                </div>
                                <div class="row">
                                    <div class="col-3"></div>
                                    <div class="col-6">
                                        <nav aria-label="Page navigation example " >
                                            <ul class="pagination" >
                                                <li class="page-item">
                                                    <a class="page-link" href="#" aria-label="Previous">
                                                        <span aria-hidden="true">&laquo;</span>
                                                    </a>
                                                </li>
                                                <li class="page-item"><a class="page-link" href="#">1</a></li>

                                                <li class="page-item">
                                                    <a class="page-link" href="#" aria-label="Next">
                                                        <span aria-hidden="true">&raquo;</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>

                                    <div class="col-3"></div>
                                </div>
                            </div>
                        </div>

                    </div>

                    </header>
          <!--        modal them nguoi no-->
                    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" id="themnguoino"
                         aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-body ttnnbody">
                                    <div class="row ">
                                        <div class=" col-sm-12">
                                            <div class="card">
                                                <div class="card-header ttnn">
                                                    <h3>Thêm người nợ <i class="fa fa-credit-card" aria-hidden="true"> </i>
                                                    </h3>

                                                </div>
                                                <div class="card-body">
                                                    <form class="" action="#" method="" name="myForm" novalidate onsubmit="return(validate());">
                                                        <div class="form-group">
                                                            <label for="inputName"> <i class="fa fa-user" aria-hidden="true"></i> Họ
                                                                và tên
                                                                (*)</label>
                                                            <input type="text" class="form-control " id="inputName" name="name"
                                                                   required>
                                                            <!-- <p class="text-danger" id="Alertname"></p> -->


                                                        </div>
                                                        <div class="form-group ">
                                                            <label for="inputEmail"><i class="fa fa-envelope-o fa-fw"></i> Email
                                                            </label>
                                                            <input type="text" class="form-control" id="inputEmail" name="email">
                                                            <!-- <p class="text-danger" id="AlertEmail"></p> -->

                                                        </div>
                                                        <div class="form-group">
                                                            <label for="inputAddress"> <i class="fa fa-map-marker"aria-hidden="true"></i>
                                                                Địa chỉ</label>
                                                            <input type="text" class="form-control" id="inputAddress" name="address">

                                                        </div>

                                                        <div class="form-group">
                                                            <label for="inputSdt"><i class="fa fa-phone" aria-hidden="true"></i>
                                                                Số Điện thoại </label>
                                                            <input type="text" class="form-control" id="inputSdt" name="phone" onkeypress="return onlyNumberKey(event)" 
                                                                   maxlength="11">
                                                        </div>
                                                        <button type="submit" class="btn btn-outline-primary">Gửi</button>


                                                    </form>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>

                                <div class="modal-footer ttnnfooter">
                                    <button type="button" class="btn  btn-danger" data-dismiss="modal">Đóng</button>
                                </div>
                            </div>

                        </div>
                    </div>
             <!--   modal them phieu no -->
                    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
                         id="themphieuno" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-body ttnnbody">
                                    <div class="row ">
                                        <div class=" col-sm-12">
                                            <div class="card">
                                                <div class="card-header ttnn">
                                                    <h3 class="text-center">Thêm phiếu nợ <i class="fa fa-money"
                                                                                             aria-hidden="true"></i></h3>
                                                    <h3> Số nợ hiện tại :
                                                    </h3>

                                                </div>
                                                <div class="card-body">
                                                    <form class="needs-validation" action="" method="" novalidate>
                                                        <div class="form-group">
                                                            <label for=""> <i class="fa fa-user" aria-hidden="true"></i> Loại
                                                                nợ:(*)</label>
                                                            <div class="btn-group btn-group-toggle col-md-12" data-toggle="buttons">

                                                                <label class="btn btn-outline-success   active" style="width:49%">
                                                                    <input type="radio" name="options" id="option1"
                                                                           autocomplete="off" checked>
                                                                    +
                                                                </label>

                                                                <label class="btn btn btn-outline-danger" style="width:49%">
                                                                    <input type="radio" name="options" id="option2"
                                                                           autocomplete="off"> -
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="inputNote"> <i class="fa fa-comment"
                                                                                          aria-hidden="true"></i>
                                                                Ghi chú </label>

                                                            <textarea name="" id="inputNote" class="form-control" cols="30"
                                                                      rows="5"></textarea>

                                                            <div class="valid-feedback">Hợp lệ.</div>
                                                            <div class="invalid-feedback">Điền đầy đủ thông tin.</div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="inputTotalDebt"><i class="fa fa-money"
                                                                                           aria-hidden="true"></i>
                                                                Số tiền </label>
                                                            <input type="text" class="form-control" id="inputTotalDebt" onkeypress="return onlyNumberKey(event)" 
                                                                   placeholder="nhập số tiền... " >
                                                            <div class=""> </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="inputSdt"><i class="fa fa-calendar" aria-hidden="true"></i>
                                                                Ngày lập phiếu </label>
                                                            <input type="datetime-local" class="form-control" id=""
                                                                   placeholder="enter Number">
                                                        </div>
                                                        <div class="form-group">

                                                            <label for="image-input"><i class="fa fa-picture-o" aria-hidden="true"></i>
                                                                Hình ảnh xác minh: </label>
                                                            <input type="file" id="image-input" accept="image/*">

                                                            <div id="image-preview">

                                                            </div>
                                                            <button class="btn btn-primary" id="cancel-button" 
                                                                    style="display:none;">Cancel</button>


                                                        </div>

                                                        <button type="submit" class="btn btn-outline-info">Gửi</button>


                                                    </form>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>

                                <div class="modal-footer ttnnfooter">
                                    <button type="button" class="btn  btn-danger" data-dismiss="modal">Đóng</button>
                                </div>
                            </div>

                        </div>
                    </div>
               <!--modal sua-->
                    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" id="sua"
                         aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-body ttnnbody">
                                    <div class="row ">
                                        <div class=" col-sm-12">
                                            <div class="card">
                                                <div class="card-header ttnn">
                                                    <h3>THÔNG TIN NGƯỜI NỢ <i class="fa fa-credit-card" aria-hidden="true"> </i>
                                                    </h3>

                                                </div>
                                                <div class="card-body">
                                                    <form class="needs-validation" action="#" method="" name="myForm2" novalidate onsubmit="return(validate2());">
                                                        <div class="form-group">
                                                            <label for="inputName"> <i class="fa fa-user" aria-hidden="true"></i> Họ
                                                                và tên
                                                                (*)</label>
                                                            <input type="text" class="form-control " id="inputName" name="name"
                                                                   required>
                                                            <!-- <p class="text-danger" id="Alertname"></p> -->
                                                        </div>
                                                        <div class="form-group ">
                                                            <label for="inputEmail"><i class="fa fa-envelope-o fa-fw"></i> Email
                                                            </label>
                                                            <input type="email" class="form-control" id="inputEmail" name="email"
                                                                   required>
                                                            <!-- <p class="text-danger" id="AlertEmail"></p> -->

                                                        </div>
                                                        <div class="form-group">
                                                            <label for="inputAddress"> <i class="fa fa-map-marker"
                                                                                          aria-hidden="true"></i>
                                                                Địa chỉ</label>
                                                            <input type="text" class="form-control" id="inputAddress">

                                                        </div>

                                                        <div class="form-group">
                                                            <label for="inputSdt"><i class="fa fa-phone" aria-hidden="true"></i>
                                                                Số điện thoại </label>
                                                            <input type="text" class="form-control" id="inputSdt"
                                                                   onkeypress="return onlyNumberKey(event)" maxlength="11">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="inputTotalDebt"><i class="fa fa-money"
                                                                                           aria-hidden="true"></i>
                                                                Total debt </label>
                                                            <input type="text" class="form-control" id="inputTotalDebt" value=""
                                                                   disabled>
                                                            <div class=""> </div>
                                                        </div>
                                                        <button type="submit" class="btn btn-outline-primary">Gửi <i
                                                                class="fa fa-check" aria-hidden="true"></i></button>


                                                    </form>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>

                                <div class="modal-footer ttnnfooter">
                                    <button type="button" class="btn  btn-danger" data-dismiss="modal">Đóng</button>
                                </div>
                            </div>

                        </div>
                    </div>
             
                    </body>
                    <script src="node_modules/jquery/dist/jquery.min.js"></script>
                    <script src="node_modules/popper.js/dist/popper.min.js"></script>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
                    <script src="https://code.jquery.com/jquery-3.6.0.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/popper.js@2.9.3/dist/umd/popper.min.js" integrity="sha384-9apDh2e7scHlvpgEAGzgKx88huhp5Y3q5b5P5G5A5vdaS2U6Cfzpwod+tU6Pn4l4" crossorigin="anonymous"></script>
                    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"></script>
                    <script src="./asset/js/screen.js"></script>
                        <script src="./asset/js/addDebtor.js"></script>

                    </html>
