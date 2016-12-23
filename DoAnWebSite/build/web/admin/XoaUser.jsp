<%-- 
    Document   : XoaUser
    Created on : Oct 28, 2016, 2:51:33 PM
    Author     : hung
--%>

<%@page import="com.web.service.UserService"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        UserService us = new UserService();
        String id = request.getParameter("IDuser");
        boolean kt = us.DeleteUser(Integer.parseInt(id));
        if(kt){
            response.sendRedirect("quanlyuser.jsp");
        }
    %>
    <body>
       
    </body>
</html>
