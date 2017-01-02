<%-- 
    Document   : inbox
    Created on : Dec 5, 2016, 4:04:10 PM
    Author     : Admin
--%>

<%@page import="java.util.ArrayList"%>
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
                <section>
                    <div class="row graphs">

                        <h1>File Upload to Database Demo</h1>
                        <form class="editor" action="AddNewProductServlet" method="POST" enctype="multipart/form-data">
                            <table>
                                
                                <tr>
                                    <td>ID Product</td>
                                    <td><input class="form-control1 input-lg" type="text" name="catalogid" placeholder="Nhập mã sản phẩm"  /><br/></td>
                                </tr>
                                <tr>
                                    <td>Product Name</td>
                                    <td><input class="form-control1 input-lg" type="text" name="name" placeholder="Nhập tên sản phẩm"  /><br/></td>
                                </tr>
                                <tr>
                                    <td>Detail Product</td>
                                    <td><textarea name="bodyText" style="visibility: hidden; display: none;"></textarea> <script type="text/javascript"> CKEDITOR.replace('bodyText');</script> </td>
                                </tr>
                                <tr>
                                    <td>Price Product</td>
                                    <td><input class="form-control1 input-lg" type="text" name="price" placeholder="Nhập giá sản phẩm" /><br/></td>
                                </tr>
                                <tr>
                                    <td>Choose a image :</td>
                                    <td><input class="form-control1 input-lg" type="file" name="photo" onchange="loadFile(event)"><br/></td>
                                </tr>

                            </table>
                            <input class="btn btn-default btn-danger magin:auto" type="submit" value="Insert" />
                        </form>



                    </div>
                </section>


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