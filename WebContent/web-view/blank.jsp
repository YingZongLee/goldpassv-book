<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <title>Gold Pass Book</title>
        <meta content="Gold Pass Book" name="Gold Pass Book" />
        <meta content="Gold Pass Book" name="Yung" />
        <link rel="shortcut icon" href="<%=request.getContextPath() %>/assets/images/favicon.ico">

        <link href="<%=request.getContextPath() %>/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath() %>/assets/css/icons.css" rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet" type="text/css">
    </head>

    <body>

        <!-- Navigation Bar-->
        <header id="topnav">
            <div class="topbar-main">
                <div class="container-fluid">

                    <!-- Logo container-->
                    <div class="logo">
                        
                        <a href="<%=request.getContextPath() %>/web-view/page.jsp" class="logo">
                            <img src="<%=request.getContextPath() %>/assets/images/logo-sm.png" alt="" class="logo-small">
                            <img src="<%=request.getContextPath() %>/assets/images/logo-horizon-bold.png" alt="" class="logo-large">
                        </a>

                    </div>
                    <!-- End Logo container-->

                    <div class="menu-extras topbar-custom">
                    </div>
                    <!-- end menu-extras -->

                    <div class="clearfix"></div>

                </div> <!-- end container -->
            </div>
            <!-- end topbar-main -->

            <div class="container-fluid">
               <!--  Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-title-box">
                        </div>
                    </div>
                </div>
            </div>

            <!-- MENU Start -->
            <div class="navbar-custom">
                <div class="container-fluid">
                    <div id="navigation">
                        <!-- Navigation Menu-->
                        <ul class="navigation-menu">
                            <li class="has-submenu">
                                <a href="#"><i class="fab fa-github"></i><span>Dashboard</span></a>
                            </li>
                            <li class="has-submenu">
                                <a href="#"><i class="fas fa-cloud-upload-alt"></i><span>Upload</span></a>
                            </li>
                            <li class="has-submenu">
                                <a href="#"><i class="fas fa-search"></i><span>Data</span></a>
                            </li>
                            <li class="has-submenu">
                                <a href="#"><i class="fas fa-inbox"></i><span>Email</span></a>
                            </li>
                            <li class="has-submenu">
                                <a href="#"><i class="ti-support"></i><span>To Be Continue</span></a>
                            </li>
                        </ul>
                        <!-- End navigation menu -->
                    </div> <!-- end navigation -->
                </div> <!-- end container-fluid -->
            </div> <!-- end navbar-custom -->
        </header>
        <!-- End Navigation Bar-->

        <div class="wrapper">
            <div class="container-fluid">
                  
            </div> <!-- end container -->
        </div>
        <!-- end wrapper -->

		<!-- Footer -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12"><span>© YungLee - 0978087183 - li_yung@icloud.com</span></div>
                </div>
            </div>
        </footer>
        <!-- End Footer -->

        <!-- jQuery  -->
        <script src="<%=request.getContextPath() %>/assets/js/jquery.min.js"></script>
        <script src="<%=request.getContextPath() %>/assets/js/bootstrap.bundle.min.js"></script>
        <script src="<%=request.getContextPath() %>/assets/js/jquery.slimscroll.js"></script>
        <script src="<%=request.getContextPath() %>/assets/js/waves.min.js"></script>

        <script src="<%=request.getContextPath() %>/plugins/jquery-sparkline/jquery.sparkline.min.js"></script>

        <!-- App js -->
        <script src="<%=request.getContextPath() %>/assets/js/app.js"></script>

    </body>
</html>