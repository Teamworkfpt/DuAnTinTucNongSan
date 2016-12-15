<%-- 
    Document   : edituser
    Created on : Nov 30, 2016, 12:19:05 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thông Tin Người Dùng</title>
        <%@include file="includes/header.jsp" %>
    </head>
    <body>
        <section class="container">
            <div class="row">
                <form action="editusersServlet" method="post">
                    <input style="display: none;" name="IdUser" value="iduser" />
                    <div class="form-group">
                        <label for="firstname">Full name:</label>
                        <input type="text" name="fullname" value="name" class="form-control" required id="firstname">
                    </div>
                    <div class="form-group">
                        <label for="middlename">Birth Day:</label>
                        <input type="date" name="birthday" value="birthday" class="form-control" id="middlename">
                    </div>
                    <div class="form-group">
                        <label for="lastname">Gender:</label>
                        <input type="number" name="gender" value="gender" class="form-control" required id="lastname">
                    </div>
                    <div class="form-group">
                        <label for="email">Email address:</label>
                        <input type="email" name="email" value="email" class="form-control" required id="email">
                    </div>
                    <div class="form-group">
                        <label for="username">Username:</label>
                        <input type="text" name="username" value="username" class="form-control" required id="username">
                    </div>
                    <div class="form-group">
                        <a href="#" class="text-info">Change password</a>
                    </div>

                    <button type="submit" class="btn btn-default">Update</button>
                    <div class="form-group">

                    </div>  

                </form>
            </div>
        </section>
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
