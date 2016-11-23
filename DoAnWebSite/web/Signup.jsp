<%-- 
    Document   : Signup
    Created on : Nov 23, 2016, 10:24:22 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="includes/header.jsp" %>
    <session class="container">
        <form action="RegisterServlet" method="post">
            <h2><img src="images/Login.png"> Đăng Ký Thành Viên</h2>
            <br>
            <div class="form-group">
                <label class="pull-left" for="email"><img src="images/Email.png"> Email:</label>
                <input type="email" class="form-control" name="email" id="email" placeholder="Nhập email" required="">
            </div>
            <div class="form-group">
                <label class="pull-left" for="fullname"><img src="images/Email.png"> Full Name :</label>
                <input type="fullname" class="form-control" name="fullname" id="fullname" placeholder="Nhập Tên" required="">
            </div>            
            <div class="form-group">
                <label class="pull-left" for="username"><img src="images/user-icon.png"> UserName:</label>
                <input type="username" class="form-control" name="username" id="username" placeholder="Nhập UserName" required="">
            </div>            
            <div class="form-group">
                <label class="pull-left" for="pwd"><img src="images/tải xuống.jpg">Password:</label>
                <input type="password" class="form-control" name="pwd" id="pwd" placeholder="Nhập password" required="">
            </div>
            <div class="form-group">
                <label class="pull-left" for="repwd"><img src="images/tải xuống.jpg">Nhập Lại Password:</label>
                <input type="password" class="form-control" name="repwd" id="repwd" placeholder="Nhập lại password" required="">
            </div>                
            <div class="checkbox">
                <label><input type="checkbox"> Ghi Nhớ Đăng Nhập</label> 
                <br> 
                <p>Đã có tài khoản, quay lại đăng nhập <a href="login.jsp">click here</a></p>

            </div>
            <button type="submit" class="btn btn-default"><img src="images/tạo mới.png"> Đăng Ký</button>
            <button type="submit" class="btn btn-default"><img src="images/go_back.png"> <a href="index.jsp"> Quay Lại</a></button>
        </form>
    </session>


</body>
</html>
