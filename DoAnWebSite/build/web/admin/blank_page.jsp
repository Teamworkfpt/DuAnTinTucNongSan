<%-- 
    Document   : BackPage
    Created on : Dec 2, 2016, 7:36:56 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Easy Admin Panel an Admin Panel Category Flat Bootstrap Responsive Website Template | Blank Page :: w3layouts</title>
        <%@include file="includes/heartag.jsp" %>

    </head> 

    <body class="sticky-header left-side-collapsed"  onload="initMap()">
        <section>
            <!-- left side start-->
            <%@include file="includes/left_menu.jsp" %>
            <!-- left side end-->

            <!-- main content start-->
            <div class="main-content main-content2 main-content2copy">
                <!-- header-starts -->
                <%@include file="includes/HearderAdmin.jsp" %>
                <!-- //header-ends -->
                <div id="page-wrapper">
                    <div class="graphs">
                        <div class="error-main">
                            <h3><i class="fa fa-exclamation-triangle"></i> <span>404</span></h3>
                            <div class="col-xs-7 error-main-left">
                                <span>Oops!</span>
                                <p>The page you're looking for could not be found.</p>
                                <div class="error-btn">
                                    <a href="adminindex.jsp">Go back?</a>
                                </div>
                            </div>
                            <div class="col-xs-5 error-main-right">
                                <img src="images/7.png" alt=" " class="img-responsive" />
                            </div>
                            <div class="clearfix"> </div>
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
