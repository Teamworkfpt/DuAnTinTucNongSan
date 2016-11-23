<%-- 
    Document   : contact
    Created on : Nov 14, 2016, 4:33:55 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="includes/headtag.jsp" %>
        <!--//end-smoth-scrolling-->
    </head>
    <body>
        <%@include file="includes/header.jsp" %>
        <!--baner-->
        <div class="baner about-bnr">
            <div class="container">
                <div class="baner-grids">
                    <div class="col-md-6 baner-top">
                        <img src="images/img16.jpg" alt=""/>
                    </div>
                    <div class="col-md-6 baner-top">
                        <img src="images/img17.jpg" alt=""/>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!--//baner-->
        <!--map-->
        <div class="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5909.242637196648!2d108.05414538304551!3d12.686608062815901!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3171f7d4216cd2fb%3A0x9f4a5ec2f999fb4!2zdHAuIEJ1w7RuIE1hIFRodeG7mXQsIMSQ4bqvayBM4bqvaywgVmnhu4d0IE5hbQ!5e1!3m2!1svi!2s!4v1479118163356"></iframe>
        </div>
        <!--//map-->
        <!--contact-->
        <div class="contact">
            <div class="container">
                <h3 class="title">Contact us</h3>
                <div class="contact-form">
                    <form>
                        <input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {
                                    this.value = 'Name';}" required="">
                        <div class="col-md-6 cnt-inpt">
                            <input type="email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Email';}" required="">
                        </div>
                        <div class="col-md-6 cnt-inpt">
                            <input type="text" value="Telephone" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Telephone';
                                    }" required="">
                        </div>
                        <div class="clearfix"> </div>
                        <textarea onfocus="this.value = '';" onblur="if (this.value == '') {
                                    this.value = 'Message...';}" required=""> Message... </textarea>
                        <input type="submit" value="Submit">
                    </form>
                </div>			
            </div>
        </div>
        <!--//contact-->	
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
