<%-- 
    Document   : Logout
    Created on : Nov 22, 2016, 9:42:05 PM
    Author     : hung
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (session.getAttribute("FullName") != null) {
        session.removeAttribute("FullName");

        response.sendRedirect("index.jsp");
    }
%>
