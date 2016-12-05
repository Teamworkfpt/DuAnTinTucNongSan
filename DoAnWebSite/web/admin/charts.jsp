<%-- 
    Document   : charts
    Created on : Dec 5, 2016, 3:48:12 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Users Admin</title>
        <%@include file="includes/HearderAdmin.jsp" %>

    </head> 

    <body class="sticky-header left-side-collapsed"  onload="initMap()">
        <section>
            <!-- left side start-->
            <div class="left-side sticky-left-side">

                <!--logo and iconic logo start-->
                <div class="logo">
                    <h1><a href="index.html">Easy <span>Admin</span></a></h1>
                </div>
                <div class="logo-icon text-center">
                    <a href="index.html"><i class="lnr lnr-home"></i> </a>
                </div>

                <!--logo and iconic logo end-->
                <div class="left-side-inner">

                    <!--sidebar nav start-->
                    <ul class="nav nav-pills nav-stacked custom-nav">
                        <li><a href="index.html"><i class="lnr lnr-power-switch"></i><span>Dashboard</span></a></li>
                        <li class="menu-list">
                            <a href="#"><i class="lnr lnr-cog"></i>
                                <span>Components</span></a>
                            <ul class="sub-menu-list">
                                <li><a href="grids.html">Grids</a> </li>
                                <li><a href="widgets.html">Widgets</a></li>
                            </ul>
                        </li>
                        <li><a href="forms.html"><i class="lnr lnr-spell-check"></i> <span>Forms</span></a></li>
                        <li><a href="tables.html"><i class="lnr lnr-menu"></i> <span>Tables</span></a></li>              
                        <li class="menu-list"><a href="#"><i class="lnr lnr-envelope"></i> <span>MailBox</span></a>
                            <ul class="sub-menu-list">
                                <li><a href="inbox.html">Inbox</a> </li>
                                <li><a href="compose-mail.html">Compose Mail</a></li>
                            </ul>
                        </li>  
                        <li class="menu-list act"><a href="#"><i class="lnr lnr-indent-increase"></i> <span>Menu Levels</span></a>  
                            <ul class="sub-menu-list">
                                <li><a href="charts.html">Basic Charts</a> </li>
                            </ul>
                        </li>
                        <li><a href="codes.html"><i class="lnr lnr-pencil"></i> <span>Typography</span></a></li>
                        <li><a href="media.html"><i class="lnr lnr-select"></i> <span>Media Css</span></a></li>
                        <li class="menu-list"><a href="#"><i class="lnr lnr-book"></i>  <span>Pages</span></a> 
                            <ul class="sub-menu-list">
                                <li><a href="sign-in.html">Sign In</a> </li>
                                <li><a href="sign-up.html">Sign Up</a></li>
                                <li><a href="blank_page.html">Blank Page</a></li>
                            </ul>
                        </li>
                    </ul>
                    <!--sidebar nav end-->
                </div>
            </div>
            <!-- left side end-->

            <!-- main content start-->
            <div class="main-content main-content5">
                <!-- header-starts -->
                <%@include file="includes/HearderAdmin.jsp" %>
                <!-- //header-ends -->
                <div id="page-wrapper">
                    <div class="graphs">
                        <h3 class="blank1">Simple Charts</h3>
                        <div class="graph_box">
                            <div class="col-md-4 grid_2">
                                <div class="grid_1">
                                    <h4>Circular</h4>
                                    <canvas id="doughnut" height="300" width="470" style="width: 470px; height: 300px;"></canvas>
                                    <script>
                                        var doughnutData = [
                                            {
                                                value: 30,
                                                color: "#F44336"
                                            },
                                            {
                                                value: 50,
                                                color: "#929292"
                                            },
                                            {
                                                value: 100,
                                                color: "#00aced"
                                            },
                                            {
                                                value: 40,
                                                color: "#9358ac"
                                            },
                                        ];
                                        new Chart(document.getElementById("doughnut").getContext("2d")).Doughnut(doughnutData);
                                    </script>
                                </div>
                            </div>
                            <div class="col-md-4 grid_2">
                                <div class="grid_1">
                                    <h4>Radar</h4>
                                    <canvas id="radar" height="300" width="470" style="width: 470px; height: 300px;"></canvas>
                                    <script>
                                        var radarChartData = {
                                            labels: ["", "", "", "", "", "", ""],
                                            datasets: [
                                                {
                                                    fillColor: "#00aced",
                                                    strokeColor: "#00aced",
                                                    pointColor: "#00aced",
                                                    pointStrokeColor: "#fff",
                                                    data: [65, 59, 90, 81, 56, 55, 40]
                                                },
                                                {
                                                    fillColor: "#8BC34A",
                                                    strokeColor: "#8BC34A",
                                                    pointColor: "#8BC34A",
                                                    pointStrokeColor: "#fff",
                                                    data: [28, 48, 40, 19, 96, 27, 100]
                                                }
                                            ]

                                        };
                                        new Chart(document.getElementById("radar").getContext("2d")).Radar(radarChartData);
                                    </script>
                                </div>
                            </div>
                            <div class="col-md-4 grid_2">
                                <div class="grid_1">
                                    <h4>PolarArea</h4>
                                    <canvas id="polarArea" height="300" width="450" style="width: 450px; height: 300px;"></canvas>
                                    <script>
                                        var chartData = [
                                            {
                                                value: Math.random(),
                                                color: "#8BC34A"
                                            },
                                            {
                                                value: Math.random(),
                                                color: "#C7604C"
                                            },
                                            {
                                                value: Math.random(),
                                                color: "#21323D"
                                            },
                                            {
                                                value: Math.random(),
                                                color: "#9D9B7F"
                                            },
                                            {
                                                value: Math.random(),
                                                color: "#7D4F6D"
                                            },
                                            {
                                                value: Math.random(),
                                                color: "#9358ac"
                                            }
                                        ];
                                        new Chart(document.getElementById("polarArea").getContext("2d")).PolarArea(chartData);
                                    </script>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="graph_box1">
                            <div class="col-md-6 grid_2 grid_2_bot">
                                <div class="grid_1">
                                    <h4>Pie</h4>
                                    <div class="legend">
                                        <div id="os-Win-lbl">Chrome <span>100%</span></div>
                                        <div id="os-Mac-lbl">Internet Explorer <span> 50%</span></div>
                                        <div id="os-Other-lbl">Safari<span>30%</span></div>
                                    </div>

                                    <canvas id="pie" height="315" width="470" style="width: 470px; height: 315px;"></canvas>
                                    <script>
                                        var pieData = [
                                            {
                                                value: 30,
                                                color: "#ef553a"
                                            },
                                            {
                                                value: 50,
                                                color: "#00aced"
                                            },
                                            {
                                                value: 100,
                                                color: "#8BC34A"
                                            }

                                        ];
                                        new Chart(document.getElementById("pie").getContext("2d")).Pie(pieData);
                                    </script>
                                </div>
                            </div>
                            <div class="col-md-6 grid_2 grid_2_bot">
                                <div class="grid_1">
                                    <h4>Line</h4>
                                    <canvas id="line1" height="100" width="600" style="width: 600px; height: 100px;"></canvas>
                                    <script>
                                        var lineChartData = {
                                            labels: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Mon"],
                                            datasets: [
                                                {
                                                    fillColor: "#fff",
                                                    strokeColor: "#F44336",
                                                    pointColor: "#fbfbfb",
                                                    pointStrokeColor: "#F44336",
                                                    data: [20, 35, 45, 30, 10, 65, 40]
                                                }
                                            ]

                                        };
                                        new Chart(document.getElementById("line1").getContext("2d")).Line(lineChartData);
                                    </script>
                                </div>
                                <div class="line-bottom-grid">
                                    <div class="grid_1">
                                        <h4>Bar</h4>
                                        <canvas id="bar1" height="100" width="600" style="width: 600px; height: 100px;"></canvas>
                                        <script>
                                            var barChartData = {
                                                labels: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Mon", "Tue", "Wed", "Thu"],
                                                datasets: [
                                                    {
                                                        fillColor: "#8BC34A",
                                                        strokeColor: "#8BC34A",
                                                        data: [25, 40, 50, 65, 55, 30, 20, 10, 6, 4]
                                                    },
                                                    {
                                                        fillColor: "#8BC34A",
                                                        strokeColor: "#8BC34A",
                                                        data: [30, 45, 55, 70, 40, 25, 15, 8, 5, 2]
                                                    }
                                                ]

                                            };
                                            new Chart(document.getElementById("bar1").getContext("2d")).Bar(barChartData);
                                        </script>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--footer section start-->
            <footer>
                <p>&copy 2015 Easy Admin Panel. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">w3layouts.</a></p>
            </footer>
            <!--footer section end-->
        </section>

        <script src="js/jquery.nicescroll.js"></script>
        <script src="js/scripts.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>