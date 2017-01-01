<%-- 
    Document   : inbox
    Created on : Dec 5, 2016, 4:04:10 PM
    Author     : Admin
--%>

<%@page import="com.web.service.SanPhamService"%>
<%@page import="com.web.model.Sanpham"%>
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
            <div class="main-content">
                <!-- header-starts -->
                <%@include file="includes/HearderAdmin.jsp" %>
                <!-- //header-ends -->
               <%                  int pageSize = 3;
                    int pageNumber = 1;
                    request.setCharacterEncoding("UTF-8");
                    ArrayList<Sanpham> listProduct = null;
                    SanPhamService SanPhamService = new SanPhamService();

                    if (request.getParameter("pagenumber") != null) {
                        session.setAttribute("pagenumber", request.getParameter("pagenumber"));
                        pageNumber = Integer.parseInt(request.getParameter("pagenumber"));
                    } else {
                        session.setAttribute("pagenumber", "1");
                    }
                    String searchKey = "";
                    if (request.getParameter("key") != null) {
                        session.setAttribute("searchkey", request.getParameter("key"));
                        searchKey = request.getParameter("key");
                        listProduct = SanPhamService.SearchProduct(pageSize, pageNumber, searchKey);
                        session.removeAttribute("searchkey");
                    } else {
                        listProduct = SanPhamService.getAllSanpham(pageSize, pageNumber);
                    }

                    int pageCount = (SanPhamService.Productcount / pageSize)
                            + (SanPhamService.Productcount % pageSize > 0 ? 1 : 0);

                    String nextPage = (pageCount > pageNumber
                            ? (pageNumber + 1) : pageNumber) + "";
                    String prePage = (pageNumber <= 1 ? 1 : pageNumber - 1) + "";
                %>

                <section class="container-fluid">
                    <div class="panel panel-default">
                        <!-- Default panel contents -->
                        <div class="panel-heading">Panel heading</div>
                        <div class="row">
                            <div class="col-md-12">
                                <form action="quanlyuser.jsp" method="get">
                                    <div class="input-group">

                                        <input type="text" class="form-control" name="key" placeholder="Search for...">
                                        <span class="input-group-btn">                                        
                                            <button class="btn btn-default btn-danger" type="submit">Search!</button>
                                        </span>
                                    </div><!-- /input-group -->
                                </form>

                            </div><!-- /.col-lg-6 -->
                        </div>


                        <!-- Table -->
                        <table class="table">
                            <thead>
                                <tr>
                                      <th>STT</th>                        
                                    <th> ID Sản Phẩm</th>                        
                                    <th>Tên Sản Phẩm</th>   
                                    <th>Mô Tả</th>
                                    <th>Images </th>
                                    <th>Chi tiết Sản Phẩm</th>  

                                </tr>

                            </thead>
                            <tbody>

                                <%
                                    int i = 0;
                                    for (Sanpham u : listProduct) {
                                        i = i + 1;
                                %>
                                <tr>
                                    <td><%=i%></td>                        
                                    <td><%= u.getIdSanPham()%></td>
                                    <td><%= u.getTenSanPham()%></td>
                                    <td><%= u.getMoTa()%></td>
                                    <td ><image  src="../images/<%= u.getImage()%>" height="40px" width="40px;"></td>                
                                    <td><%= u.getChiTietSanPham()%></td>                     

                                    <td>
                                        <a href="editusers.jsp?userid=<%= u.getIdSanPham()%>"><input class="btn btn-default btn-danger" type="button" name="edit" value="Edit" /></a>
                                    </td>
                                    <td>
                                        <a href="XoaUser.jsp?IDuser=<%= u.getIdSanPham()%>"><input class="btn btn-default btn-danger" type="button" name="Del" value="Del" /></a> 
                                    </td>

                                </tr>
                                <%
                                    }
                                %>
                            </tbody>

                        </table>
                        <%
                            String keyurl = "";
                            if (!searchKey.equals("")) {
                                keyurl = "&key=" + searchKey;
                            }
                        %>
                        <ul class="pagination pager">
                            <li><a  aria-label="Previous" href="?pagenumber=<%=prePage%><%=keyurl%> " > <span aria-hidden="true">&laquo;</span></a></li>
                                <%

                                    for (int j = 1; j <= pageCount; j++) {
                                        if (pageNumber == j) {
                                %>
                            <li class="active"><a href="?pagenumber=<%=j%><%=keyurl%>"><%=j%></a></li>
                                <%
                                } else {
                                %>                                   
                            <li ><a href="?pagenumber=<%=j%><%=keyurl%>"><%=j%></a></li>

                            <%
                                    }
                                }
                            %>
                            <li ><a aria-label="Next" href="?pagenumber=<%=nextPage%><%=keyurl%>"><span aria-hidden="true">&raquo;</span></a></li>
                        </ul>
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