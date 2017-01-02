<%-- 
    Document   : left_menu
    Created on : Dec 6, 2016, 11:41:01 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="left-side sticky-left-side">

                <!--logo and iconic logo start-->
                <div class="logo">
                    <h1><a href=response.sendRedirect("/index.jsp")>Easy <span>Admin</span></a></h1>
                </div>
                <div class="logo-icon text-center">
                    <a href="adminindex.jsp"><i class="lnr lnr-home"></i> </a>
                </div>

                <!--logo and iconic logo end-->
                <div class="left-side-inner">

                    <!--sidebar nav start-->
                    <ul class="nav nav-pills nav-stacked custom-nav">
                        <li class="active"><a href="adminindex.jsp"><i class="lnr lnr-power-switch"></i><span>Dashboard</span></a></li>
                        <li class="menu-list">
                            <a><i class="lnr lnr-cog"></i>
                                <span>Quản Lý Tin Tức</span></a>
                            <ul class="sub-menu-list">
                                <li><a href="ManagerNews.jsp">Manager News</a> </li>
                                <li><a href="widgets.jsp">Thêm Bài Viết</a></li>
                            </ul>
                        </li>
         
                        <li class="menu-list"><a><i class="lnr lnr-spell-check"></i> 
                                <span>Quản Lý User</span></a>
                             <ul class="sub-menu-list">
                                <li><a href="ManagerUser.jsp">User Manager</a> </li>
                                <li><a href="compose-mail.jsp">Compose Mail</a></li>
                            </ul>
                        </li>
                        <li class="menu-list"><a><i class="lnr lnr-menu"></i>
                                <span>Quản Lý Sản Phẩm</span></a>
                             <ul class="sub-menu-list">
                                <li><a href="ProductManager.jsp">Product manager</a> </li>
                                <li><a href="AddNewProduct.jsp">Add New Product</a></li>
                            </ul>
                        </li>              
                        <li class="menu-list"><a href="#"><i class="lnr lnr-envelope"></i> <span>MailBox</span></a>
                            <ul class="sub-menu-list">
                                <li><a href="inbox.jsp">Inbox</a> </li>
                                <li><a href="compose-mail.jsp">Compose Mail</a></li>
                            </ul>
                        </li>      
                        <li class="menu-list"><a href="#"><i class="lnr lnr-indent-increase"></i> <span>Menu Levels</span></a>  
                            <ul class="sub-menu-list">
                                <li><a href="charts.jsp">Basic Charts</a> </li>
                            </ul>
                        </li>
                        <li><a href="codes.jsp"><i class="lnr lnr-pencil"></i> <span>Typography</span></a></li>
                        <li><a href="media.jsp"><i class="lnr lnr-select"></i> <span>Media Css</span></a></li>
                        <li class="menu-list"><a href="#"><i class="lnr lnr-book"></i>  <span>Pages</span></a> 
                            <ul class="sub-menu-list">
                                <li><a href="sign-in.jsp">Sign In</a> </li>
                                <li><a href="sign-up.jsp">Sign Up</a></li>
                                <li><a href="blank_page.jsp">Blank Page</a></li>
                            </ul>
                        </li>
                    </ul>
                    <!--sidebar nav end-->
                </div>
            </div>
