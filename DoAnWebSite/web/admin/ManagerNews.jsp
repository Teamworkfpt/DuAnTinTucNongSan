<%-- 
    Document   : Manager News
    Created on : Dec 11, 2016, 1:51:36 PM
    Author     : Admin
--%>

<%@page import="com.web.service.QuanLiTinTucService"%>
<%@page import="com.web.model.Quanlitintuc"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản Lý Tin Tức</title>
                 <%@include file="includes/heartag.jsp" %>
                       

    </head>
    <body class="sticky-header left-side-collapsed"  onload="initMap()">
        <section>
        <%@include file="includes/left_menu.jsp" %>
        
        <div class="main-content">
                    
                       <%@include file="includes/HearderAdmin.jsp" %>   

        
            <%                  int pageSize = 3;
            int pageNumber = 1;
            request.setCharacterEncoding("UTF-8");
            ArrayList<Quanlitintuc> listNew = null;
            QuanLiTinTucService QuanLiTinTuc = new QuanLiTinTucService();

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
//                listNew = QuanLiTinTuc.SearchNews(pageSize, pageNumber, searchKey);
                listNew = QuanLiTinTuc.SearchNew(pageSize, pageNumber, searchKey);
                session.removeAttribute("searchkey");
            } else {
                listNew = QuanLiTinTuc.getAllNews(pageSize, pageNumber);
            }

            int pageCount = (QuanLiTinTuc.Newscount / pageSize)
                    + (QuanLiTinTuc.Newscount % pageSize > 0 ? 1 : 0);

            String nextPage = (pageCount > pageNumber
                    ? (pageNumber + 1) : pageNumber) + "";
            String prePage = (pageNumber <= 1 ? 1 : pageNumber - 1) + "";
        %>
           
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
                            <th> Mã Tin</th>                        
                            <th>Tiêu Đề</th>
                            <th>Ảnh Bìa</th>
                            <th>Mô Tả</th>
                            <th>Bài Đăng </th>
                            <th>Ngày Đăng</th>  
                        </tr>

                    </thead>
               <tbody>

                <%
                    int i = 0;
                    for (Quanlitintuc u : listNew) {
                        i = i + 1;
                %>
                <tr>
                    <td><%=i%></td>                        
                    <td><%= u.getMaTin()%></td>
                    <td><%= u.getTieuDe()%></td>
                    <td><image src="../images/<%= u.getImages()%>"height="40px" width="40px;"></td>
                    <td><%= u.getMota()%></td>
                    <td><%= u.getBaiDang()%></td>                
                    <td><%= u.getNgayDang()%></td>                     

                   

                    <td>
                        <a href="editusers.jsp?userid=<%= u.getIdtinTuc()%>"><input class="btn btn-default btn-danger" type="button" name="edit" value="Edit" /></a>
               </td>
                <td>
                    <a href="XoaUser.jsp?IDuser=<%= u.getIdtinTuc()%>"><input class="btn btn-default btn-danger" type="button" name="Del" value="Del" /></a> 
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
                        </div>
        </section>

                 <script src="js/jquery.nicescroll.js"></script>
        <script src="js/scripts.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
