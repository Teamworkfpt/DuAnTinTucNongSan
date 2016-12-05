<%-- 
    Document   : forms
    Created on : Dec 5, 2016, 4:00:40 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
    <head>
        <title>Users Admin</title>
        <%@include file="includes/heartag.jsp" %>

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
                        <li class="active"><a href="forms.html"><i class="lnr lnr-spell-check"></i> <span>Forms</span></a></li>
                        <li><a href="tables.html"><i class="lnr lnr-menu"></i> <span>Tables</span></a></li>              
                        <li class="menu-list"><a href="#"><i class="lnr lnr-envelope"></i> <span>MailBox</span></a>
                            <ul class="sub-menu-list">
                                <li><a href="inbox.html">Inbox</a> </li>
                                <li><a href="compose-mail.html">Compose Mail</a></li>
                            </ul>
                        </li>  
                        <li class="menu-list"><a href="#"><i class="lnr lnr-indent-increase"></i> <span>Menu Levels</span></a>  
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
            <div class="main-content main-content3">
                <!-- header-starts -->
                <%@include file="includes/HearderAdmin.jsp" %>
                <!-- //header-ends -->
                <div id="page-wrapper">
                    <div class="graphs">
                        <h3 class="blank1">Basic Forms</h3>
                        <div class="tab-content">
                            <div class="tab-pane active" id="horizontal-form">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label for="focusedinput" class="col-sm-2 control-label">Focused Input</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control1" id="focusedinput" placeholder="Default Input">
                                        </div>
                                        <div class="col-sm-2 jlkdfj1">
                                            <p class="help-block">Your help text!</p>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="disabledinput" class="col-sm-2 control-label">Disabled Input</label>
                                        <div class="col-sm-8">
                                            <input disabled="" type="text" class="form-control1" id="disabledinput" placeholder="Disabled Input">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword" class="col-sm-2 control-label">Password</label>
                                        <div class="col-sm-8">
                                            <input type="password" class="form-control1" id="inputPassword" placeholder="Password">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="checkbox" class="col-sm-2 control-label">Checkbox</label>
                                        <div class="col-sm-8">
                                            <div class="checkbox-inline1"><label><input type="checkbox"> Unchecked</label></div>
                                            <div class="checkbox-inline1"><label><input type="checkbox" checked=""> Checked</label></div>
                                            <div class="checkbox-inline1"><label><input type="checkbox" disabled=""> Disabled Unchecked</label></div>
                                            <div class="checkbox-inline1"><label><input type="checkbox" disabled="" checked=""> Disabled Checked</label></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="checkbox" class="col-sm-2 control-label">Checkbox Inline</label>
                                        <div class="col-sm-8">
                                            <div class="checkbox-inline"><label><input type="checkbox"> Unchecked</label></div>
                                            <div class="checkbox-inline"><label><input type="checkbox" checked=""> Checked</label></div>
                                            <div class="checkbox-inline"><label><input type="checkbox" disabled=""> Disabled Unchecked</label></div>
                                            <div class="checkbox-inline"><label><input type="checkbox" disabled="" checked=""> Disabled Checked</label></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="selector1" class="col-sm-2 control-label">Dropdown Select</label>
                                        <div class="col-sm-8"><select name="selector1" id="selector1" class="form-control1">
                                                <option>Lorem ipsum dolor sit amet.</option>
                                                <option>Dolore, ab unde modi est!</option>
                                                <option>Illum, fuga minus sit eaque.</option>
                                                <option>Consequatur ducimus maiores voluptatum minima.</option>
                                            </select></div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Multiple Select</label>
                                        <div class="col-sm-8">
                                            <select multiple="" class="form-control1">
                                                <option>Option 1</option>
                                                <option>Option 2</option>
                                                <option>Option 3</option>
                                                <option>Option 4</option>
                                                <option>Option 5</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtarea1" class="col-sm-2 control-label">Textarea</label>
                                        <div class="col-sm-8"><textarea name="txtarea1" id="txtarea1" cols="50" rows="4" class="form-control1"></textarea></div>
                                    </div>
                                    <div class="form-group">
                                        <label for="radio" class="col-sm-2 control-label">Radio</label>
                                        <div class="col-sm-8">
                                            <div class="radio block"><label><input type="radio"> Unchecked</label></div>
                                            <div class="radio block"><label><input type="radio" checked=""> Checked</label></div>
                                            <div class="radio block"><label><input type="radio" disabled=""> Disabled Unchecked</label></div>
                                            <div class="radio block"><label><input type="radio" disabled="" checked=""> Disabled Checked</label></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="radio" class="col-sm-2 control-label">Radio Inline</label>
                                        <div class="col-sm-8">
                                            <div class="radio-inline"><label><input type="radio"> Unchecked</label></div>
                                            <div class="radio-inline"><label><input type="radio" checked=""> Checked</label></div>
                                            <div class="radio-inline"><label><input type="radio" disabled=""> Disabled Unchecked</label></div>
                                            <div class="radio-inline"><label><input type="radio" disabled="" checked=""> Disabled Checked</label></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="smallinput" class="col-sm-2 control-label label-input-sm">Small Input</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control1 input-sm" id="smallinput" placeholder="Small Input">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="mediuminput" class="col-sm-2 control-label">Medium Input</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control1" id="mediuminput" placeholder="Medium Input">
                                        </div>
                                    </div>
                                    <div class="form-group mb-n">
                                        <label for="largeinput" class="col-sm-2 control-label label-input-lg">Large Input</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control1 input-lg" id="largeinput" placeholder="Large Input">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div class="bs-example" data-example-id="form-validation-states">
                            <form>
                                <div class="form-group has-success">
                                    <label class="control-label" for="inputSuccess1">Input with success</label>
                                    <input type="text" class="form-control1" id="inputSuccess1">
                                </div>
                                <div class="form-group has-warning">
                                    <label class="control-label" for="inputWarning1">Input with warning</label>
                                    <input type="text" class="form-control1" id="inputWarning1">
                                </div>
                                <div class="form-group has-error">
                                    <label class="control-label" for="inputError1">Input with error</label>
                                    <input type="text" class="form-control1" id="inputError1">
                                </div>
                            </form>
                        </div>
                        <div class="panel-body panel-body-inputin">
                            <form role="form" class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-md-2 control-label">Email Address</label>
                                    <div class="col-md-8">
                                        <div class="input-group in-grp1">							
                                            <span class="input-group-addon">
                                                <i class="fa fa-envelope-o"></i>
                                            </span>
                                            <input type="text" class="form-control1" placeholder="Email Address">
                                        </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2 control-label">Password</label>
                                    <div class="col-md-8">
                                        <div class="input-group in-grp1">
                                            <span class="input-group-addon">
                                                <i class="fa fa-key"></i>
                                            </span>
                                            <input type="password" class="form-control1" id="exampleInputPassword1" placeholder="Password">
                                        </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2 control-label">Email Address</label>
                                    <div class="col-md-8">
                                        <div class="input-group input-icon right in-grp1">
                                            <span class="input-group-addon">
                                                <i class="fa fa-envelope-o"></i>
                                            </span>
                                            <input id="email" class="form-control1" type="text" placeholder="Email Address">
                                        </div>
                                    </div>
                                    <div class="col-sm-2 jlkdfj1">
                                        <p class="help-block">With tooltip</p>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2 control-label">Password</label>
                                    <div class="col-md-8">
                                        <div class="input-group input-icon right in-grp1">
                                            <span class="input-group-addon">
                                                <i class="fa fa-key"></i>
                                            </span>
                                            <input type="password" class="form-control1" placeholder="Password">
                                        </div>
                                    </div>
                                    <div class="col-sm-2 jlkdfj1">
                                        <p class="help-block">With tooltip</p>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="form-group has-success">
                                    <label class="col-md-2 control-label">Input Addon Success</label>
                                    <div class="col-md-8">
                                        <div class="input-group input-icon right in-grp1">
                                            <span class="input-group-addon">
                                                <i class="fa fa-envelope-o"></i>
                                            </span>
                                            <input id="email" class="form-control1" type="text" placeholder="Email Address">
                                        </div>
                                    </div>
                                    <div class="col-sm-2 jlkdfj1">
                                        <p class="help-block">Email is valid!</p>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="form-group has-error">
                                    <label class="col-md-2 control-label">Input Addon Error</label>
                                    <div class="col-md-8">
                                        <div class="input-group input-icon right in-grp1">
                                            <span class="input-group-addon">
                                                <i class="fa fa-key"></i>
                                            </span>
                                            <input type="password" class="form-control1" placeholder="Password">
                                        </div>
                                    </div>
                                    <div class="col-sm-2 jlkdfj1">
                                        <p class="help-block">Error!</p>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2 control-label">Checkbox Addon</label>
                                    <div class="col-md-8">
                                        <div class="input-group in-grp1">
                                            <div class="input-group-addon"><input type="checkbox"></div>
                                            <input type="text" class="form-control1">
                                        </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2 control-label">Checkbox Addon</label>
                                    <div class="col-md-8">
                                        <div class="input-group in-grp1">
                                            <input type="text" class="form-control1">
                                            <div class="input-group-addon"><input type="checkbox"></div>

                                        </div>
                                    </div>
                                    <div class="col-sm-2 jlkdfj1">
                                        <p class="help-block">Checkbox on right</p>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2 control-label">Radio Addon</label>
                                    <div class="col-md-8">
                                        <div class="input-group in-grp1">
                                            <div class="input-group-addon"><input type="radio"></div>
                                            <input type="text" class="form-control1">
                                        </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2 control-label">Radio Addon</label>
                                    <div class="col-md-8">
                                        <div class="input-group in-grp1">
                                            <input type="text" class="form-control1">
                                            <div class="input-group-addon"><input type="radio"></div>

                                        </div>
                                    </div>
                                    <div class="col-sm-2 jlkdfj1">
                                        <p class="help-block">Radio on right</p>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2 control-label">Input Processing</label>
                                    <div class="col-md-8">
                                        <div class="input-icon right spinner">
                                            <i class="fa fa-fw fa-spin fa-spinner"></i>
                                            <input id="email" class="form-control1" type="text" placeholder="Processing...">
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                        <p class="help-block">Processing right</p>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="form-group mb-n">
                                    <label class="col-md-2 control-label">Readonly</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control1" placeholder="Readonly" readonly="">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </form>
                        </div>
                        <div class="bs-example" data-example-id="form-validation-states-with-icons">
                            <form>
                                <div class="form-group has-success has-feedback">
                                    <label class="control-label" for="inputSuccess2">Input with success</label>
                                    <input type="text" class="form-control1" id="inputSuccess2" aria-describedby="inputSuccess2Status">
                                    <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
                                    <span id="inputSuccess2Status" class="sr-only">(success)</span>
                                </div>
                                <div class="form-group has-warning has-feedback">
                                    <label class="control-label" for="inputWarning2">Input with warning</label>
                                    <input type="text" class="form-control1" id="inputWarning2" aria-describedby="inputWarning2Status">
                                    <span class="glyphicon glyphicon-warning-sign form-control-feedback" aria-hidden="true"></span>
                                    <span id="inputWarning2Status" class="sr-only">(warning)</span>
                                </div>
                                <div class="form-group has-error has-feedback">
                                    <label class="control-label" for="inputError2">Input with error</label>
                                    <input type="text" class="form-control1" id="inputError2" aria-describedby="inputError2Status">
                                    <span class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="true"></span>
                                    <span id="inputError2Status" class="sr-only">(error)</span>
                                </div>
                                <div class="form-group has-success has-feedback">
                                    <label class="control-label" for="inputGroupSuccess1">Input group with success</label>
                                    <div class="input-group input-group1">
                                        <span class="input-group-addon">@</span>
                                        <input type="text" class="form-control1" id="inputGroupSuccess1" aria-describedby="inputGroupSuccess1Status">
                                    </div>
                                    <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
                                    <span id="inputGroupSuccess1Status" class="sr-only">(success)</span>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputFile">File input</label>
                                    <input type="file" id="exampleInputFile">
                                    <p class="help-block">Example block-level help text here.</p>
                                </div>
                                <div class="panel-footer">
                                    <div class="row">
                                        <div class="col-sm-8 col-sm-offset-2">
                                            <button class="btn-success btn">Submit</button>
                                            <button class="btn-default btn">Cancel</button>
                                            <button class="btn-inverse btn">Reset</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
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