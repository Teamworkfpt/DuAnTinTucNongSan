<%-- 
    Document   : index
    Created on : Nov 14, 2016, 4:23:36 PM
    Author     : Admin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.web.model.Quanlitintuc"%>
<%@page import="com.web.service.QuanLiTinTucService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <%@include file="includes/headtag.jsp" %>
        <!--//end-smoth-scrolling-->
    </head>
    <%@include file="includes/header.jsp" %>
    <body>
        <%            
            QuanLiTinTucService us = new QuanLiTinTucService();
            ArrayList<Quanlitintuc> ListNews = null;
            ListNews = us.GetNews();
        %>
        <!--baner-->
        <div class="baner">
            <div class="container">
                <div class="baner-grids">
                    <%
                        for (int i = 0; i < ListNews.size(); i++) {
                            Quanlitintuc News = ListNews.get(i);
                            if (i < 2) {
                    %>
                    <div class="col-md-6 baner-top">
                        <figure class="effect-bubba">
                            <img src="images/<%=News.getImages()%>" alt=""/>
                            <figcaption>
                                <h4><a href="ChiTietBaiViet.jsp?IDTinTuc=<%= News.getIdtinTuc()%>"><%=News.getTieuDe()%></a></h4>
                                <p>           <%=News.getMota()%></p>	
                            </figcaption>			
                        </figure>	
                    </div>
                            
                    <%
                    } else  {
                    %>

                        <div class="col-md-4 baner-bottom">
                            <figure class="effect-bubba">
                                <img src="images/<%=News.getImages()%>" alt=""/>
                                <figcaption>
                                    <h4><a href="ChiTietBaiViet.jsp?IDTinTuc=<%= News.getIdtinTuc()%>"><%=News.getTieuDe()%></a></h4>
                                    <p><%=News.getMota()%></p>	
                                </figcaption>			
                            </figure>	
                        </div>

                        <%
                            }
                        %>
                    
                    <% }
                    %>
                </div>
            </div>
        </div>
        <!--//baner-->
        <!-- news -->
        <div class="news-info">
            <div class="container">		
                <h3 class="title">Our News</h3>
            </div>
        </div>
        <!-- container -->
        <div class="container">				
            <div class="news">	
                <div class="news-grids">
                    <div class="col-md-4 news-grid">
                        <div class="news-grid-left news-grid-left-img">
                            <h6>23rd /july</h6>
                        </div>
                        <div class="news-grid-left-info">
                            <h5>Lorem Ipsum is simply dummy</h5>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                        </div>
                    </div>
                    <div class="col-md-4 news-grid">
                        <div class="news-grid-left news-grid-middle">
                            <h6>5th /Aug</h6>
                        </div>
                        <div class="news-grid-left-info">
                            <h5>Lorem Ipsum is simply dummy</h5>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                        </div>
                    </div>
                    <div class="col-md-4 news-grid">
                        <div class="news-grid-left news-grid-right">
                            <h6>15th /Aug</h6>
                        </div>
                        <div class="news-grid-left-info">
                            <h5>Lorem Ipsum is simply dummy</h5>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div><!-- //container -->	
        </div>
        <!-- //news -->
        <!--main-->
        <div class="main">
            <div class="container">
                <div class="main-grids">
                    <div class="col-md-6 main-left">
                        <img src="images/img6.jpg" alt=""/>
                        <h4>ECO SOLUTIONS</h4>
                        <p>Temporibus autem quibusdam et aut officiis debitis aut
                            rerum necessitatibus saepe eveniet ut et voluptates repudiandae.</p>
                        <a href="#" class="more btn btn-1 btn-1b"> Read More</a>
                    </div>
                    <div class="col-md-6 main-right">
                        <div class="col-md-6 main-text">
                            <img src="images/img7.jpg" alt=""/>
                        </div>
                        <div class="col-md-6 main-text">
                            <h4>ECO SOLUTIONS</h4>			
                            <p>Temporibus autem quibusdam et aut officiis debitis aut eveniet ut et voluptates repudiandae rerum necessitatibus saepe quibusdam et aut officiis debitis aut
                                rerum necessitatibus saepe eveniet ut et voluptates repudiandae </p>
                            <a href="#" class="more btn btn-1 btn-1b"> Read More</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>			
            </div>
        </div>
        <!--//main-->
        <!--services-->
        <div class="services" id="services">
            <div class="container">
                <h3 class="title">Services Overview</h3>
                <div class="service-grids">
                    <div class="col-md-4 srvc-grids-info">
                        <div class="srvc-img">
                            <span class="glyphicon glyphicon-leaf" aria-hidden="true"></span>
                        </div>
                        <h5>Thực Phẩm</h5>
                        <p>Claritas est etiam processus dynaicus qui Mirum est notare quam </p>
                    </div>
                    <div class="col-md-4 srvc-grids-info">
                        <div class="srvc-img">
                            <span class="glyphicon glyphicon-globe" aria-hidden="true"></span>
                        </div>
                        <h5>Tltrices</h5>
                        <p>Claritas est etiam processus dynaicus qui Mirum est notare quam </p>
                    </div>
                    <div class="col-md-4 srvc-grids-info">
                        <div class="srvc-img">
                            <span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
                        </div>
                        <h5>Cltrices</h5>
                        <p>Claritas est etiam processus dynaicus qui Mirum est notare quam </p>
                    </div>
                    <div class="col-md-4 srvc-grids-info">
                        <div class="srvc-img">
                            <span class="glyphicon glyphicon-grain" aria-hidden="true"></span>
                        </div>
                        <h5>Fltrices</h5>
                        <p>Claritas est etiam processus dynaicus qui Mirum est notare quam </p>
                    </div>
                    <div class="col-md-4 srvc-grids-info">
                        <div class="srvc-img">
                            <span class="glyphicon glyphicon-send" aria-hidden="true"></span>
                        </div>
                        <h5>Processus</h5>
                        <p>Claritas est etiam processus dynaicus qui Mirum est notare quam </p>
                    </div>
                    <div class="col-md-4 srvc-grids-info">
                        <div class="srvc-img">
                            <span class="glyphicon glyphicon-education" aria-hidden="true"></span>
                        </div>
                        <h5>Sequitur</h5>
                        <p>Claritas est etiam processus dynaicus qui Mirum est notare quam </p>
                    </div>
                    <div class="clearfix"> </div>				
                </div>
            </div>
        </div>
        <!--//services-->
        <%@include file="includes/footer.jsp" %>
    </body>
</html>