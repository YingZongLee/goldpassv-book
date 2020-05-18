<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
                                <a href="<%=request.getContextPath() %>/web-view/page.jsp"><i class="fas fa-table"></i><span>Profile</span></a>
                            </li>
                            
                            <li class="has-submenu">
                                <a href="#"><i class="fas fa-cloud-upload-alt"></i><span>Portfolio</span></a>
                            	<ul class="submenu megamenu">
                            		 <li>
                                        <ul>
                                            <li><a href="<%=request.getContextPath() %>/gold-list">Gold History</a></li>
                                            <li><a href="<%=request.getContextPath() %>/gold-upload">Files Upload</a></li>
                                        </ul>
                                    </li>
                            	</ul>
                            </li>
                            
                            <li class="has-submenu">
                                <a href="<%=request.getContextPath() %>/web-view/page.jsp"><i class="far fa-file-code"></i><span>Contact</span></a>
                            </li>
                            
                        </ul>
                        <!-- End navigation menu -->
                    </div> <!-- end navigation -->
                </div> <!-- end container-fluid -->
            </div> <!-- end navbar-custom -->
        </header>
        <!-- End Navigation Bar-->