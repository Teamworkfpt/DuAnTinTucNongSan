<%-- 
    Document   : ChiTietProduct
    Created on : Dec 29, 2016, 1:18:53 AM
    Author     : Admin
--%>

<%@page import="com.web.model.Sanpham"%>
<%@page import="com.web.service.SanPhamService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="includes/headtag.jsp" %>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
    </head>
    <body>
        <%
            SanPhamService us = new SanPhamService();
            Sanpham Product = null;
            String Matin = request.getParameter("idSanPham");
            Product = us.GetNewsByID(Matin);
         %>
        <%@include file="includes/header.jsp" %>
        	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="images/<%=Product.getImage()%>" /></div>
						  <div class="tab-pane" id="pic-2"><img src="images/<%=Product.getImage()%>" /></div>
						  <div class="tab-pane" id="pic-3"><img src="images/<%=Product.getImage()%>" /></div>
						  <div class="tab-pane" id="pic-4"><img src="images/<%=Product.getImage()%>" /></div>
						  <div class="tab-pane" id="pic-5"><img src="images/<%=Product.getImage()%>" /></div>
						</div>
						<ul class="preview-thumbnail nav nav-tabs">
						  <li class="active"><a data-target="#pic-1" data-toggle="tab"><img src="images/<%=Product.getImage()%>" /></a></li>
						  <li><a data-target="#pic-2" data-toggle="tab"><img src="images/<%=Product.getImage()%>" /></a></li>
						  <li><a data-target="#pic-3" data-toggle="tab"><img src="images/<%=Product.getImage()%>" /></a></li>
						  <li><a data-target="#pic-4" data-toggle="tab"><img src="images/<%=Product.getImage()%>" /></a></li>
						  <li><a data-target="#pic-5" data-toggle="tab"><img src="images/<%=Product.getImage()%>" /></a></li>
						</ul>
						
					</div>
					<div class="details col-md-6">
						<h3 class="product-title"><%=Product.getTenSanPham()%></h3>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							<span class="review-no">41 reviews</span>
						</div>
						<p class="product-description"><%=Product.getMoTa()%></p>
						<h4 class="price">Giá <span>$180</span></h4>
						<p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>
						<h5 class="sizes">sizes:
							<span class="size" data-toggle="tooltip" title="small">s</span>
							<span class="size" data-toggle="tooltip" title="medium">m</span>
							<span class="size" data-toggle="tooltip" title="large">l</span>
							<span class="size" data-toggle="tooltip" title="xtra large">xl</span>
						</h5>
						<h5 class="colors">colors:
							<span class="color orange not-available" data-toggle="tooltip" title="Not In store"></span>
							<span class="color green"></span>
							<span class="color blue"></span>
						</h5>
						
					</div>
				</div>
			</div>
		</div>
	</div>
         <div class="well container">
                                    <h4>Leave a Comment:</h4>
                                    <form role="form">
                                        <div class="form-group">
                                            <textarea class="form-control" rows="3"></textarea>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </form>
                                </div>

                                <hr>

                                <!-- Posted Comments -->

                                <!-- Comment -->
                                <div class="media container">
                                    <a class="pull-left" href="#">
                                        <img class="media-object" src="http://placehold.it/64x64" alt="">
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading">Start Bootstrap
                                            <small>August 25, 2014 at 9:30 PM</small>
                                        </h4>
                                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                    </div>
                                </div>

                                <!-- Comment -->
                                <div class="media container">
                                    <a class="pull-left" href="#">
                                        <img class="media-object" src="http://placehold.it/64x64" alt="">
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading">Start Bootstrap
                                            <small>August 25, 2014 at 9:30 PM</small>
                                        </h4>
                                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                        <!-- Nested Comment -->
                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <img class="media-object" src="http://placehold.it/64x64" alt="">
                                            </a>
                                            <div class="media-body">
                                                <h4 class="media-heading">Nested Start Bootstrap
                                                    <small>August 25, 2014 at 9:30 PM</small>
                                                </h4>
                                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                            </div>
                                        </div>
                                        <!-- End Nested Comment -->
                                    </div>
                                </div>

                            </div>
        
        
        
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
