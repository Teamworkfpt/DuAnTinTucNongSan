<%-- 
    Document   : grids
    Created on : Dec 5, 2016, 4:02:21 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Users Admin</title>
        <%@include file="includes/heartag.jsp" %>

    </head> 

    <body class="sticky-header left-side-collapsed"  onload="initMap()">
        <section>
            <!-- left side start-->
            <div class="left-side sticky-left-side">

                <!--logo and iconic logo start-->
                <div class="logo">
                    <h1><a href="index.html">Easy <span>Admin</span></a></h1>
                </div>
                <div class="logo-icon text-center">
                    <a href="index.html"><i class="lnr lnr-home"></i> </a>
                </div>

                <!--logo and iconic logo end-->
                <div class="left-side-inner">

                    <!--sidebar nav start-->
                    <ul class="nav nav-pills nav-stacked custom-nav">
                        <li><a href="index.html"><i class="lnr lnr-power-switch"></i><span>Dashboard</span></a></li>
                        <li class="menu-list act">
                            <a href="#"><i class="lnr lnr-cog"></i>
                                <span>Components</span></a>
                            <ul class="sub-menu-list">
                                <li><a href="grids.html">Grids</a> </li>
                                <li><a href="widgets.html">Widgets</a></li>
                            </ul>
                        </li>
                        <li><a href="forms.html"><i class="lnr lnr-spell-check"></i> <span>Forms</span></a></li>
                        <li><a href="tables.html"><i class="lnr lnr-menu"></i> <span>Tables</span></a></li>              
                        <li class="menu-list"><a href="#"><i class="lnr lnr-envelope"></i> <span>MailBox</span></a>
                            <ul class="sub-menu-list">
                                <li><a href="inbox.html">Inbox</a> </li>
                                <li><a href="compose-mail.html">Compose Mail</a></li>
                            </ul>
                        </li>  
                        <li class="menu-list"><a href="#"><i class="lnr lnr-indent-increase"></i> <span>Menu Levels</span></a>  
                            <ul class="sub-menu-list">
                                <li><a href="charts.html">Basic Charts</a> </li>
                            </ul>
                        </li>
                        <li><a href="codes.html"><i class="lnr lnr-pencil"></i> <span>Typography</span></a></li>
                        <li><a href="media.html"><i class="lnr lnr-select"></i> <span>Media Css</span></a></li>
                        <li class="menu-list"><a href="#"><i class="lnr lnr-book"></i>  <span>Pages</span></a> 
                            <ul class="sub-menu-list">
                                <li><a href="sign-in.html">Sign In</a> </li>
                                <li><a href="sign-up.html">Sign Up</a></li>
                                <li><a href="blank_page.html">Blank Page</a></li>
                            </ul>
                        </li>
                    </ul>
                    <!--sidebar nav end-->
                </div>
            </div>
            <!-- left side end-->

            <!-- main content start-->
            <div class="main-content main-content1">
                <!-- header-starts -->
                <%@include file="includes/HearderAdmin.jsp" %>
                <!-- //header-ends -->
                <div id="page-wrapper">
                    <div class="graphs">
                        <div class="md">
                            <h3 class="blank1">Grids</h3>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-12">
                                        <input type="text" class="form-control1" placeholder=".col-md-12">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2 grid_box1">
                                        <input type="text" class="form-control1" placeholder=".col-md-2">
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" class="form-control1" placeholder=".col-md-10">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-3 grid_box1">
                                        <input type="text" class="form-control1" placeholder=".col-md-3">
                                    </div>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control1" placeholder=".col-md-9">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-4 grid_box1">
                                        <input type="text" class="form-control1" placeholder=".col-md-4">
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control1" placeholder=".col-md-8">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>	
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-5 grid_box1">
                                        <input type="text" class="form-control1" placeholder=".col-md-5">
                                    </div>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control1" placeholder=".col-md-7">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-6 grid_box1">
                                        <input type="text" class="form-control1" placeholder=".col-md-6">
                                    </div>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control1" placeholder=".col-md-6">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>	
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-4 grid_box1">
                                        <input type="text" class="form-control1" placeholder=".col-md-4">
                                    </div>
                                    <div class="col-md-4 grid_box1">
                                        <input type="text" class="form-control1" placeholder=".col-md-4">
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control1" placeholder=".col-md-4">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>	
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2 grid_box1">
                                        <input type="text" class="form-control1" placeholder=".col-md-2">
                                    </div>
                                    <div class="col-md-8 grid_box1">
                                        <input type="text" class="form-control1" placeholder=".col-md-8">
                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" class="form-control1" placeholder=".col-md-2">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>	
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-3 grid_box1">
                                        <input type="text" class="form-control1" placeholder=".col-md-3">
                                    </div>
                                    <div class="col-md-3 grid_box1">
                                        <input type="text" class="form-control1" placeholder=".col-md-3">
                                    </div>
                                    <div class="col-md-3 grid_box1">
                                        <input type="text" class="form-control1" placeholder=".col-md-3">
                                    </div>
                                    <div class="col-md-3">
                                        <input type="text" class="form-control1" placeholder=".col-md-3">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>	
                            <div class="form-group mb-n">
                                <div class="row">
                                    <div class="col-md-2 grid_box1">
                                        <input type="text" class="form-control1" placeholder=".col-md-2">
                                    </div>
                                    <div class="col-md-2 grid_box1">
                                        <input type="text" class="form-control1" placeholder=".col-md-2">
                                    </div>
                                    <div class="col-md-2 grid_box1">
                                        <input type="text" class="form-control1" placeholder=".col-md-2">
                                    </div>
                                    <div class="col-md-2 grid_box1">
                                        <input type="text" class="form-control1" placeholder=".col-md-2">
                                    </div>
                                    <div class="col-md-2 grid_box1">
                                        <input type="text" class="form-control1" placeholder=".col-md-2">
                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" class="form-control1" placeholder=".col-md-2">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>	
                        </div>
                        <div class="col-md-12 grids_bottom">
                            <h3 class="blank1">Bootstrap Grid Details</h3>
                            <div class="panel panel-default">
                                <div class="panel-body grid_table">
                                    <table class="table table-bordered table-striped no-margin grd_tble">
                                        <thead>
                                            <tr>
                                                <th></th>
                                                <th>
                                                    Extra small devices
                                                    <small>Phones (&lt;768px)</small>
                                                </th>
                                                <th>
                                                    Small devices
                                                    <small>Tablets (≥768px)</small>
                                                </th>
                                                <th>
                                                    Medium devices
                                                    <small>Desktops (≥992px)</small>
                                                </th>
                                                <th>
                                                    Large devices
                                                    <small>Desktops (≥1200px)</small>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th>Max container width</th>
                                                <td>None (auto)</td>
                                                <td>750px</td>
                                                <td>970px</td>
                                                <td>1170px</td>
                                            </tr>
                                            <tr>
                                                <th>Class prefix</th>
                                                <td><code>.col-xs-</code></td>
                                                <td><code>.col-sm-</code></td>
                                                <td><code>.col-md-</code></td>
                                                <td><code>.col-lg-</code></td>
                                            </tr>
                                            <tr>
                                                <th># of columns</th>
                                                <td colspan="4">12</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--footer section start-->
            <footer>
                <p>&copy 2015 Easy Admin Panel. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">w3layouts.</a></p>
            </footer>
            <!--footer section end-->
        </section>

        <script src="js/jquery.nicescroll.js"></script>
        <script src="js/scripts.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>