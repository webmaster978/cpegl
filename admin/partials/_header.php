<?php

include '../config/config.php';
include '../config/base.php';

session_start();

if(!isset($_SESSION['admin_name'])){
   header('location:../login');
}

?>
<div class="header">
			
            <!-- Logo -->
            <div class="header-left">
                <a href="index.html" class="logo">
                    <img src="../assets/img/1.png" width="100" height="40" alt="">
                </a>
            </div>
            <!-- /Logo -->
            
            <a id="toggle_btn" href="javascript:void(0);">
                <span class="bar-icon">
                    <span></span>
                    <span></span>
                    <span></span>
                </span>
            </a>
            
            <!-- Header Title -->
            <div class="page-title-box">
                <h3>DGM-GOMA</h3>
            </div>
            <!-- /Header Title -->
            
            <a id="mobile_btn" class="mobile_btn" href="#sidebar"><i class="fa fa-bars"></i></a>
            
            <!-- Header Menu -->
            <ul class="nav user-menu">
            
                <!-- Search -->
              
                <!-- /Search -->
            
              
            
                <!-- Notifications -->
                
                <!-- /Notifications -->
                
                <!-- Message Notifications -->
                
                <!-- /Message Notifications -->

                <li class="nav-item dropdown has-arrow main-drop">
                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                        <span class="user-img"><img src="../assets/img/profiles/avatar-21.jpg" alt="">
                        <span class="status online"></span></span>
                        <span> <?php echo $_SESSION['admin_name'] ?></span>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="profile">Mon profile</a>
                        
                        <a class="dropdown-item" href="../logout.php">Deconnexion</a>
                    </div>
                </li>
            </ul>
            <!-- /Header Menu -->
            
            <!-- Mobile Menu -->
            <div class="dropdown mobile-user-menu">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="profile">Mon profile</a>
                    <a class="dropdown-item" href="settings">Paramettres</a>
                    <a class="dropdown-item" href="../logout.php">Deconnexion</a>
                </div>
            </div>
            <!-- /Mobile Menu -->
            
        </div>