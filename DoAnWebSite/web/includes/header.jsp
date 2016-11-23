<%-- 
    Document   : header
    Created on : Nov 14, 2016, 4:38:57 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="headtag.jsp" %>
<!--header-->
<div class="logo">
    <div class="container">
        <div class="logo-info">
            <a href="index.html">
                <h1>Crops</h1>	
                <span class="glyphicon glyphicon-grain" aria-hidden="true"></span>
            </a>
        </div>
    </div>	
</div>
<!--//header-->		
<!--navigation-->
<div class="top-nav">
    <nav class="navbar navbar-default">
        <div class="container">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">Menu						
            </button>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="hvr-bounce-to-bottom active"><a href="index.jsp">Home</a></li>
                <li class="hvr-bounce-to-bottom"><a href="about.jsp">About</a></li>

                <li><a href="#" class="dropdown-toggle hvr-bounce-to-bottom" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Gallery<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a class="hvr-bounce-to-bottom" href="gallery.jsp">gallery1</a></li>
                        <li><a class="hvr-bounce-to-bottom" href="#">Gallery2</a></li>
                        <li><a class="hvr-bounce-to-bottom" href="#">Gallery3</a></li>           
                    </ul>
                </li>	
                <li class="hvr-bounce-to-bottom"><a href="codes.jsp">Short Codes</a></li>
                <li class="hvr-bounce-to-bottom"><a href="contact.jsp">Contact Us</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="glyphicon glyphicon-log-in"></span> Đăng nhập
                        <span class="caret"></span>
                    </a>
                    <ul id="login-dp" class="dropdown-menu">
                        <%
                            if (session.getAttribute("FullName") == null) {
                        %>
                        <%@include file="../Login.jsp" %>
                        <li>
                            <span class="glyphicon glyphicon-user">Xin chào, 
                                <strong style="color: #101010"><%=session.getAttribute("FullName")%> </strong>
                            </span>
                            </a>
                        </li>
                        <%
                        } else {
                        %>
                        <li>
                            <span class="glyphicon glyphicon-user">Xin chào, 
                                <strong style="color: #101010"><%=session.getAttribute("FullName")%> </strong>
                            </span>
                            </a>
                        </li>
                        <li><a href="Logout.jsp"><span class="glyphicon glyphicon-log-out"></span>Thoát</a></li>
                            <%
                                }
                            %>
                    </ul>
                </li>
                <!--                        <li class="hvr-bounce-to-bottom"><a href="Login.jsp">Login</a></li>-->
                <li class="hvr-bounce-to-bottom"><a href="#">Register</a></li>
            </ul>	
            <div class="clearfix"> </div>
        </div>	
    </nav>		
</div>	
<!--//navigation-->

