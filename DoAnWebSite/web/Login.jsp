<%-- 
    Document   : Login
    Created on : Nov 22, 2016, 7:36:04 PM
    Author     : hung
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<li>
    <div class="row">
        <div class="col-md-12">
            Đăng nhập thông qua
            <div class="social-buttons">
                <a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
                <a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
            </div>
            hoặc
            <form class="form" role="form" method="post" action="LoginServerlet" onsubmit="return validateFormLogin()" accept-charset="UTF-8" name="loginform" id="login-nav">
                <span id="errlogin"></span>
                <div class="form-group">
                    <div class="input-group">
                        <input type="text" class="form-control input-md" id="InputUsername" name="username" placeholder="Nhập tên đăng nhập"  name="username">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <input type="password" onkeyup="loadXMLDocLogin()" class="form-control input-md" id="InputPassword" name="npwd" placeholder="Mật khẩu"  name="pwd">
                    </div>
                </div>
                <div class="help-block text-right"><a href="">Bạn quên mật khẩu ?</a></div>

                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Đăng nhập</button>
                </div>

                <div class="checkbox">
                    <label>
                        <input type="checkbox"> keep me logged-in
                    </label>
                </div>
            </form>
            <div class="bottom text-center">
                New here ? <a href="signup.jsp"><b>Join Us</b></a>
            </div>
        </div>
    </div>
</li>
