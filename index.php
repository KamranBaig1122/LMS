<?php
///include 'function.php';
//include 'function.php';
include 'header.php';
//require 'header.php';
?>


<div class="p-5 mb-4  rounded-4" style="background-color: #2D033B;">
    <div class="container-fluid py-5" style="animation: myMove2 4.5s 1;">
        <h1 class="display-5 text-white fw-bold" id="ani1" style="animation: myMove2 4.5s 1;">Library Management System</h1>
        <p class="text-white fs-4">Library management system allows a library to keep track of all its books,
             and also manage its members. Some of the services offered by a library management system
              include book requests by the members of the library, and denial or issuance of the requests
               by the librarian.</p>
    </div>
    <div class="row align-items-md-stretch">
        <div class="col-md-6">
                <div class="h-100 p-5 border rounded-3" style="background-color: #2D033B;">
                    <h2 class="text-white">ADMIN LOGIN</h2>
                    <p></p>
                    <a href="admin_login.php" class="btn btn-outline-light">Admin Login</a>
                </div>
        </div>
        <div class="col-md-6">
            <div class="h-100 p-5 border rounded-3" style="background-color: #ffff;">
                <h2>STUDENT LOGIN</h2>
                <a href="user_login.php" class="btn btn-outline-secondary">Login</a>
                <a href="user_registration.php" class="btn btn-outline-danger">Sign Up</a>
            </div>
        </div>
    </div>
</div>



<?php
require 'footer.php';
?>