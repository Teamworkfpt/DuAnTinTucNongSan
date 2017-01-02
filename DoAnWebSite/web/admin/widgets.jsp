<%-- 
    Document   : widgets
    Created on : Dec 5, 2016, 4:09:28 PM
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
            <%@include file="includes/left_menu.jsp" %>
            <!-- left side end-->

            <!-- main content start-->
            <div class="main-content main-content2">
                <!-- header-starts -->
                <%@include file="includes/HearderAdmin.jsp" %>
                <!-- //header-ends -->
                <div id="page-wrapper">
                    <div class="graphs">
                        <div class="widget_bottom">
                            <div class="col-md-8 widget_bottom_left">
                                <div class="widget_1_box2">
                                    <div class="widget-body">
                                        <div class="editor">
                                            <form id="article-form" name="article-form" method="post" action="AddNewsServlet"> 
                                                <div class="form-group">
                                                    <input type="text" class="form-control1 input-lg" placeholder="Enter title ...">
                                                </div>
                                                <div class="editor-content ng-isolate-scope" mb-scrollbar="contentScrollbar">
                                                    <textarea name="bodyText" style="visibility: hidden; display: none;"></textarea> <script type="text/javascript"> CKEDITOR.replace('bodyText');</script> 
                                                    <div class="editor2">
                                                        <input type="text" class="form-control1 input-lg" placeholder="Enter Mô Tả ...">
                                                        <button class="btn btn-default btn-danger magin:auto" onClick="#">Submit</button>
                                                    </div>

                                                </div
                                            </form>
                                        </div>
                                    </div>
                                </div>	
                            </div>
                            <div class="col-md-4 widget_bottom_right">
                                <div class="banner-bottom-video-grid-left">
                                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab" id="headingOne">
                                                <h4 class="panel-title asd">
                                                    <a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                        <span class="lnr lnr-chevron-down"></span><i class="lnr lnr-chevron-up"></i><label>assumenda est cliche reprehenderit</label>
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                                <div class="panel-body panel_text">
                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab" id="headingTwo">
                                                <h4 class="panel-title asd">
                                                    <a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                        <span class="lnr lnr-chevron-down"></span><i class="lnr lnr-chevron-up"></i><label>Itaque earum rerum</label>
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                                <div class="panel-body panel_text">
                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab" id="headingThree">
                                                <h4 class="panel-title asd">
                                                    <a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                        <span class="lnr lnr-chevron-down"></span><i class="lnr lnr-chevron-up"></i><label>autem accusamus terry richa quibusdam</label>
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                                <div class="panel-body panel_text">
                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab" id="headingFour">
                                                <h4 class="panel-title asd">
                                                    <a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                                        <span class="lnr lnr-chevron-down"></span><i class="lnr lnr-chevron-up"></i><label>excepturi sint cliche reprehenderit<label>
                                                                </a>
                                                                </h4>
                                                                </div>
                                                                <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                                                    <div class="panel-body panel_text">
                                                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
                                                                    </div>
                                                                </div>
                                                                </div>
                                                                <div class="panel panel-default">
                                                                    <div class="panel-heading" role="tab" id="headingFive">
                                                                        <h4 class="panel-title asd">
                                                                            <a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                                                                <span class="lnr lnr-chevron-down"></span><i class="lnr lnr-chevron-up"></i><label>voluptatum deleniti enim eiusmod high<label>
                                                                                        </a>
                                                                                        </h4>
                                                                                        </div>
                                                                                        <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                                                                                            <div class="panel-body panel_text">
                                                                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
                                                                                            </div>
                                                                                        </div>
                                                                                        </div>
                                                                                        </div>
                                                                                        </div>
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