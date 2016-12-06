<%-- 
    Document   : loguot
    Created on : Sep 19, 2016, 3:49:41 PM
    Author     : fpoly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <% 
            if(session!=null){
                session.removeAttribute("fullname");
                response.sendRedirect("/index.jsp");
            }
        %>
        
    </body>
</html>
