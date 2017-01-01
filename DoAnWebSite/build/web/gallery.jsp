<%-- 
    Document   : gallery
    Created on : Nov 14, 2016, 4:34:49 PM
    Author     : Admin
--%>

<%@page import="com.web.model.Sanpham"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.web.service.SanPhamService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="includes/headtag.jsp" %>	
    </head>
    <body>
       
        <%@include file="includes/header.jsp" %>
         <%            SanPhamService us = new SanPhamService();
            ArrayList<Sanpham> ListNews = null;
            ListNews = us.GetProduct();
        %>
        <!--baner-->
        <div class="baner about-bnr">
            <div class="container">
                <div class="baner-grids">
                    <div class="col-md-6 baner-top">
                        <img src="images/img16.jpg" alt=""/>
                    </div>
                    <div class="col-md-6 baner-top">
                        <img src="images/img17.jpg" alt=""/>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!--//baner-->
        <!--gallery-->
        <div class="gallery">		
            <div class="container">
                <h3 class="title">Our Gallery</h3>
                <div class="gallery-grids">
                    <%                        
                        for (int i = 0; i < ListNews.size(); i++) {
                            Sanpham Product = ListNews.get(i);
                    %>

                    <div class="col-md-4 port-grids view view-fourth">
                        <a class="example-image-link" href="images/img8.jpg" data-lightbox="example-set" data-title="">
                            <img src="images/<%=Product.getImage()%>" class="img-responsive" alt=""/>
                            <div class="mask">
                                <h2><a href="ChiTietProduct.jsp?idSanPham=<%= Product.getIdSanPham()%>"><%=Product.getTenSanPham()%></a></h2>
                                
                                <p>           <%=Product.getMoTa()%></p>	

                            </div>
                        </a>
                    </div>
                                
                    <%}%>
                    <div class="clearfix"> </div>	
                    <script src="js/lightbox-plus-jquery.min.js"></script>
                </div>				
            </div>
        </div>	
        <!--//gallery-->
        <%@include file="includes/footer.jsp" %>
    </body>
</html>