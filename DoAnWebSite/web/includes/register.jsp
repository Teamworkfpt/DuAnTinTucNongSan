<%-- 
    Document   : register
    Created on : Sep 30, 2016, 4:58:33 PM
    Author     : fpoly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="id02" class="modal">

    <form class="modal-content animate" action="RegisterServlet" method="post">
        <div class="imgcontainer">
            <span onclick="document.getElementById('id02').style.display = 'none'" class="close" title="Close Modal">&times;</span>
        </div>

        <div class="container">
            <section class="container ">
                <form action="RegisterServlet" method="post">
                    <div class="form-group">
                        <label for="email">Email address:</label>
                        <input type="email" name="email" class="form-control" required id="email">
                        <label for="username">Username:</label>
                        <input type="text" name="username" class="form-control" required id="username">
                        <label for="fullname">full name</label>
                        <input type="text" name="fullname" class="form-control" required id="fullname">
                        <label for="pwd">Password:</label>
                        <input type="password" name="pwd" class="form-control" required id="pwd">
                        <label for="repwd">Retype Password:</label>
                        <input type="password" name="repwd" class="form-control" required id="repwd">
                        <label><input required="" type="checkbox" name="rememberMe" value="Y">Agree condition! </label>
                    </div>
                    <button type="submit" class="btn btn-default ">Register</button>
                    <div class="form-group">
                        <%
                            if (session.getAttribute("errormsg") != null) {
                        %>
                        <label class="text-danger">
                            <%=session.getAttribute("errormsg")%>

                        </label>
                        <%
                                session.getAttribute("errormsg");
                            }
                        %>
                    </div>
                    
                </form>
            </section>
                    <div class="container col-md-11" style="background-color:#f1f1f1">

            <button type="button" onclick="document.getElementById('id02').style.display = 'none'" class="cancelbtn">Cancel</button>
            <span class="psw">Forgot <a href="#">password?</a></span>

        </div>
        </div>

        
    </form>
</div>
