<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from codervent.com/rocker/color-version/authentication-signin.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:54:36 GMT -->
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <%--<%@include file="Title.jsp" %>--%>
        <%@include file="Css.jsp" %>
    </head>

    <body>
        <!-- Start wrapper-->
        <div id="wrapper">
            <div class="card border-primary border-top-sm border-bottom-sm card-authentication1 mx-auto my-5 animated bounceInDown">
                <div class="card-body">
                    <div class="card-content p-2">
                        <div class="text-center">
                            <!--<img src="../../wecare.png" alt="logo icon"  width="210" height="100">-->
                        </div>
                        <div class="card-title text-uppercase text-center py-3">Sign In</div>
                        <form action="../SuperAdminLoginServlet" method="post">
                            <div class="form-group">
                                <div class="position-relative has-icon-right">
                                    <label for="exampleInputUsername" class="sr-only">Username</label>
                                    <input type="text" id="exampleInputUsername" name="uname" class="form-control form-control-rounded" placeholder="Username">
                                    <div class="form-control-position">
                                        <i class="icon-user"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="position-relative has-icon-right">
                                    <label for="exampleInputPassword" class="sr-only">Password</label>
                                    <input type="password" id="exampleInputPassword" name="password" class="form-control form-control-rounded" placeholder="Password">
                                    <div class="form-control-position">
                                        <i class="icon-lock"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row mr-0 ml-0">
                                <div class="form-group col-6">

                                </div>
                                <div class="form-group col-6 text-right">
                                    <a href="ForgetPass.jsp">Forget Password</a>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary shadow-primary btn-round btn-block waves-effect waves-light">Sign In</button>

                        </form>
                        <br>
                           <%
                               HttpSession session1 = request.getSession(false);
                        if (session1.getAttribute("i") != null) {
                            int i = (Integer) session1.getAttribute("i");
                            String msg = (String) session1.getAttribute("msg");
                            if (i == 2) {

                    %>

                    <div class="alert alert-danger alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <div class="alert-icon">
                            <i class="icon-info"></i>
                        </div>
                        <div class="alert-message">
                            <span><strong></strong><%=msg%></span>
                        </div>
                    </div>
                    <%} else {%>
                    <div class="alert alert-success alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <div class="alert-icon">
                            <i class="icon-info"></i>
                        </div>
                        <div class="alert-message">
                            <span><strong></strong><%=msg%></span>
                        </div>
                    </div>

                    <%
                            }
                            session1.removeAttribute("i");
                            session1.removeAttribute("msg");
                        }%>
                    </div>
                </div>
            </div>

            <!--Start Back To Top Button-->
            <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
            <!--End Back To Top Button-->
        </div><!--wrapper-->

        <%@include file="Script.jsp" %>
    </body>

    <!-- Mirrored from codervent.com/rocker/color-version/authentication-signin.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:54:36 GMT -->
</html>
