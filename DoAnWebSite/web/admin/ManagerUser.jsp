v<%-- 
    Document   : quanlyuser
    Created on : Nov 30, 2016, 12:26:40 AM
    Author     : Admin
--%>

<%@page import="com.web.model.Users"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.web.service.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Người Sử Dụng</title>
        <%@include file="includes/header.jsp" %>
    </head>
    <body>
        <%                  int pageSize = 3;
            int pageNumber = 1;
            request.setCharacterEncoding("UTF-8");
            ArrayList<Users> listUser = null;
            UserService userservice = new UserService();

            if (request.getParameter("pagenumber") != null) {
                session.setAttribute("pagenumber", request.getParameter("pagenumber"));
                pageNumber = Integer.parseInt(request.getParameter("pagenumber"));
            } else {
                session.setAttribute("pagenumber", "1");
            }
            String searchKey = "";
            if (request.getParameter("key") != null) {
                session.setAttribute("searchkey", request.getParameter("key"));
                searchKey = request.getParameter("key");
                listUser = userservice.SearchUsers(pageSize, pageNumber, searchKey);
                session.removeAttribute("searchkey");
            } else {
                listUser = userservice.getAllUsers(pageSize, pageNumber);
            }

            int pageCount = (userservice.usercount / pageSize)
                    + (userservice.usercount % pageSize > 0 ? 1 : 0);

            String nextPage = (pageCount > pageNumber
                    ? (pageNumber + 1) : pageNumber) + "";
            String prePage = (pageNumber <= 1 ? 1 : pageNumber - 1) + "";
        %>

        <section class="container-fluid">
            <div class="panel panel-default">
                <!-- Default panel contents -->
                <div class="panel-heading">Panel heading</div>
                <div class="row">
                    <div class="col-md-12">
                        <form action="quanlyuser.jsp" method="get">
                            <div class="input-group">

                                <input type="text" class="form-control" name="key" placeholder="Search for...">
                                <span class="input-group-btn">                                        
                                    <button class="btn btn-default btn-danger" type="submit">Search!</button>
                                </span>
                            </div><!-- /input-group -->
                        </form>

                    </div><!-- /.col-lg-6 -->
                </div>
               
               
                <!-- Table -->
                <table class="table">
                    <thead>
                        <tr>
                            <th>STT</th>                        
                            <th> Tên</th>                        
                            <th>Email</th>   
                            <th> Mật Khẩu></th>
                            <th> Quyền </th>
                            <th>Tên Đầy Đủ</th>  
                            <th>Ngày Sinh</th>                       
                            <th>Giới Tính</th>                       
                            <th>Ghi Chú</th>

                        </tr>

                    </thead>
               <tbody>

                <%
                    int i = 0;
                    for (Users u : listUser) {
                        i = i + 1;
                %>
                <tr>
                    <td><%=i%></td>                        
                    <td><%= u.getUserName()%></td>
                    <td><%= u.getEmail()%></td>
                    <td><%= u.getPwd()%></td>
                    <td><%= u.getQuyen()%></td>                
                    <td><%= u.getFullName()%></td>                     

                    <td><%= u.getBirthDay()%></td>

                    <td><%= u.getGender()%></td>
                    <td><%= u.getNote()%></td>

                    <td>
                <a href="editusers.jsp?userid=<%= u.getIdUser()%>"><input type="button" name="edit" value="Edit" /></a>
               </td>
                <td>
                    <a href="XoaUser.jsp?IDuser=<%= u.getIdUser()%>"><input type="button" name="Del" value="Del" /></a> 
                </td>

                </tr>
                <%
                    }
                %>
                </tbody>

                </table>
                <%
                    String keyurl = "";
                    if (!searchKey.equals("")) {
                        keyurl = "&key=" + searchKey;
                    }
                %>
                <ul class="pagination pager">
                    <li><a  aria-label="Previous" href="?pagenumber=<%=prePage%><%=keyurl%> " > <span aria-hidden="true">&laquo;</span></a></li>
                        <%

                            for (int j = 1; j <= pageCount; j++) {
                                if (pageNumber == j) {
                        %>
                    <li class="active"><a href="?pagenumber=<%=j%><%=keyurl%>"><%=j%></a></li>
                        <%
                        } else {
                        %>                                   
                    <li ><a href="?pagenumber=<%=j%><%=keyurl%>"><%=j%></a></li>

                    <%
                            }
                        }
                    %>
                    <li ><a aria-label="Next" href="?pagenumber=<%=nextPage%><%=keyurl%>"><span aria-hidden="true">&raquo;</span></a></li>
                </ul>
            </div>
                
        </section>
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
