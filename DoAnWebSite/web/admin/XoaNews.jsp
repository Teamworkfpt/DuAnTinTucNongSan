<%-- 
    Document   : XoaNews
    Created on : Jan 1, 2017, 8:48:55 PM
    Author     : Admin
--%>

<%@page import="com.web.service.QuanLiTinTucService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
        QuanLiTinTucService us = new QuanLiTinTucService();
        String id = request.getParameter("Idtintuc");
        boolean kt = us.DeleteUser(Integer.parseInt(id));
        if(kt){
            response.sendRedirect("ManagerNews.jsp");
        }
    %>
    </body>
</html>
