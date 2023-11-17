<%-- 
    Document   : change-newpassword
    Created on : May 29, 2022, 10:15:14 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <!--Author: DPV-->
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>CHANGE PASSWORD</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/bad.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />

        
    </head>

    <body>
        
        <section class="vh-100" style="background-image:url(https://scontent.fhan3-5.fna.fbcdn.net/v/t1.15752-9/360084737_228779036747134_2493944242331990969_n.jpg?_nc_cat=109&cb=99be929b-59f725be&ccb=1-7&_nc_sid=ae9488&_nc_ohc=i1BqpPxhwBAAX9ggUBy&_nc_ht=scontent.fhan3-5.fna&oh=03_AdRSZ2j3rkXJMQDOgAgrcIlkjOEveLunNXl4ftUiNhRVvg&oe=64D4ED5D)  ;">
            <div class="container h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-lg-12 col-xl-11">
                        <div class="card text-black" style="border-radius: 5px;">
                            <div class="card-body p-md-5">
                                <div class="row justify-content-center">
                                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
                                        <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Change Password</p>
                                        <form class="mx-1 mx-md-4" action="forgetPassword" method="post">
                                            
                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <label class="form-label" for="form3Example1c">Enter UserName</label>
                                                    <input type="text" id="form3Example1c" class="form-control" required name="user"/>
                                                </div>
                                            </div>
                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <label class="form-label" for="form3Example1c">Enter Password</label>
                                                    <input type="password" id="form3Example1c" class="form-control" required name="pass"/>
                                                </div>
                                            </div>
                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <label class="form-label" for="form3Example1c">New Password</label>
                                                    <input type="password" id="form3Example1c" class="form-control" required name="newPassword"/>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <label class="form-label" for="form3Example3c">Confirm Password</label>
                                                    <input type="password" id="form3Example3c" class="form-control" required name="confirmPassword"/>
                                                </div>
                                            </div>
                                            <div class="d-block mx-4 mb-3 mb-lg-4  text-danger"><b>${mess}</b></div>
                                            <div class="d-block mx-4 mb-3 mb-lg-4 text-center">
                                                <button class="btn btn-primary btn-block px-5 w-100" type="submit">Confirm</button>
                                            </div>
                                            
                                            <div class="text-center pt-2">
                                                <a href="login">Back to Login</a>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
                                        <img  src="https://file.hstatic.net/1000351433/file/z3670696866986_2cdb2cc018e5826ba043645c9476eff1_916645e4b88d4468bdce815a86422f9f.jpg"
                                             class="img-fluid mx-auto d-block" alt="Sample image">
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
