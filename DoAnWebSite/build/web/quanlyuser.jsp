<%-- 
    Document   : quanlyuser
    Created on : Nov 30, 2016, 12:26:40 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Người Sử Dụng</title>
        <%@include file="includes/header.jsp" %>
    </head>
    <body>
        <section class="container-fluid">
            <div class="panel panel-default">
                <!-- Default panel contents -->
                <div class="panel-heading"><h4>Quản Lý Tài Khoản</h4></div>

                <!-- Table -->
                <table class="table">
                    <thead>
                        <tr>
                            <th>STT</th>                        
                            <th>Họ & Tên</th>                        
                            <th>Ngày Sinh</th>                        
                            <th>Giới Tính </th>                        
                            <th>Email</th>                       
                            <th>Tên Đăng Nhập</th>                       
                            <th>Mật Khẩu</th>
                            <th>Chỉnh Sửa</th>                       
                            <th>Xóa</th>
                        </tr>

                    </thead>
                </table>
                <ul class="pagination pager">
                    <li><a href="">Previous</a></li>
                    <li><a href="">1</a><li>
                    <li><a href="">2</a><li>	
                    <li><a href="">3</a><li>	
                    <li><a href="">Next</a></li>
                </ul>
            </div>
        </section>
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
