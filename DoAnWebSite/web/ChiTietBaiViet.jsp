<%-- 
    Document   : ChiTietBaiViet
    Created on : Dec 15, 2016, 4:38:44 PM
    Author     : Admin
--%>

<%@page import="com.web.model.Quanlitintuc"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.web.service.QuanLiTinTucService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html" charset="utf-8"/>
        <title>Index - KhanhSpring.com</title>
        <script type="text/javascript" src="../../js/jquery-2.0.2.min.js"></script>
        <link href="../../css/style.css" rel="stylesheet" type="text/css">
        <%@include file="includes/headtag.jsp" %>
    </head>
    <body>
        <div id="header-wrap">
            <div id="header">
                <%@include file="includes/header.jsp" %>
            </div>
        </div><!--end #header-wrap-->
        <% QuanLiTinTucService us = new QuanLiTinTucService();
            Quanlitintuc ListNews = null;
            String Matin = request.getParameter("IDTinTuc");
            ListNews = us.GetNewsByID(Matin);
            ArrayList<Quanlitintuc> News = null;
            News = us.GetNews();

            //    News = us.GetNewsByID(Matin);
        %>
        <div id="container">
            <div id="main-content">

                <div class="content-wrap">
                    <div class="container">

                        <div class="row">

                            <!-- Blog Post Content Column -->
                            <div class="col-lg-8">

                                <!-- Blog Post -->

                                <!-- Title -->
                                <h1><%=ListNews.getTieuDe()%></h1>

                                <!-- Author -->
                                <p class="lead">
                                    by <a href="#"><%=ListNews.getTieuDe()%></a>
                                </p>

                                <hr>

                                <!-- Date/Time -->
                                <p><span class="glyphicon glyphicon-time"></span> <%=ListNews.getNgayDang()%></p>

                                <hr>

                                <!-- Preview Image -->
                                <img class="img-responsive" src="http://placehold.it/900x300" alt="">

                                <hr>

                                <!-- Post Content -->
                                <p class="lead"><%=ListNews.getBaiDang()%></p>
                                <hr>

                                <!-- Blog Comments -->

                                <!-- Comments Form -->
                                <div class="well">
                                    <h4>Leave a Comment:</h4>
                                    <form role="form">
                                        <div class="form-group">
                                            <textarea class="form-control" rows="3"></textarea>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </form>
                                </div>

                                <hr>

                                <!-- Posted Comments -->

                                <!-- Comment -->
                                <div class="media">
                                    <a class="pull-left" href="#">
                                        <img class="media-object" src="http://placehold.it/64x64" alt="">
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading">Start Bootstrap
                                            <small>August 25, 2014 at 9:30 PM</small>
                                        </h4>
                                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                    </div>
                                </div>

                                <!-- Comment -->
                                <div class="media">
                                    <a class="pull-left" href="#">
                                        <img class="media-object" src="http://placehold.it/64x64" alt="">
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading">Start Bootstrap
                                            <small>August 25, 2014 at 9:30 PM</small>
                                        </h4>
                                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                        <!-- Nested Comment -->
                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <img class="media-object" src="http://placehold.it/64x64" alt="">
                                            </a>
                                            <div class="media-body">
                                                <h4 class="media-heading">Nested Start Bootstrap
                                                    <small>August 25, 2014 at 9:30 PM</small>
                                                </h4>
                                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                            </div>
                                        </div>
                                        <!-- End Nested Comment -->
                                    </div>
                                </div>

                            </div>

                            <!-- Blog Sidebar Widgets Column -->
                            <div class="col-md-4">

                                <!-- Blog Search Well -->
                                <div class="well">
                                    <h4>Blog Search</h4>
                                    <div class="input-group">
                                        <input type="text" class="form-control">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="button">
                                                <span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </span>
                                    </div>
                                    <!-- /.input-group -->
                                </div>

                                <!-- Blog Categories Well -->
                                <div class="well">
                                    <h4>Blog Categories</h4>
                                    <div class="row">
                                        <%
                                            for (int i = 0; i < News.size(); i++) {
                                                Quanlitintuc BNews = News.get(i);
                                                if (i != Integer.parseInt(Matin)) {
                                        %>
                                        <div>
                                            <figure>
                                                <figcaption>
                                                    <h4><a href="ChiTietBaiViet.jsp?IDTinTuc=<%= ListNews.getIdtinTuc()%>"><%=ListNews.getTieuDe()%></a></h4>

                                                </figcaption>			
                                            </figure>	
                                        </div>
                                        <%
                                            }
                                        %>
                                        <%
                                            }
                                        %>
                                    </div>
                                    <!-- /.row -->
                                </div>

                                <!-- Side Widget Well -->
                                <div class="well">
                                    <h4>Side Widget Well</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore, perspiciatis adipisci accusamus laudantium odit aliquam repellat tempore quos aspernatur vero.</p>
                                </div>

                            </div>

                        </div>
                        <!-- /.row -->

                        <hr>

                        <!-- Footer -->
                        <footer>
                            <div class="row">
                                <div class="col-lg-6">
                                    <p>Copyright &copy; Your Website 2014</p>
                                </div>
                            </div>
                            <!-- /.row -->
                        </footer>

                    </div>
                    <div class="content">

                        <h1 class="single-post-title "></h1>

                    </div>

                </div><!--end .content-->

            </div><!--end #main-content-->


        </div><!--end #container-->

        <div id="footer">
            <%@include file="includes/footer.jsp" %>
        </div><!--end #footer-->
    </body>
</html>
