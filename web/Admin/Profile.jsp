
<%@page import="Com.Admin.Dao.ProductDao"%>
<%@page import="Com.Admin.Dao.AdminDao"%>
<%@page import="java.util.List"%>
<%@page import="Com.Admin.Model.AdminModel"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from codervent.com/rocker/color-version/ui-nav-tabs.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:36:28 GMT -->
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <%@include file="Title.jsp" %>
        <%@include file="Css.jsp" %>

    </head>

    <body>

        <!-- Start wrapper-->
        <!--<div id="wrapper">-->

            <!--Start sidebar-wrapper-->
            <%@include file="Sidebar.jsp" %>
            <!--End sidebar-wrapper-->

            <!--Start topbar header-->
            <%@include file="Topbar.jsp" %>
            <!--End topbar header-->

            <div class="clearfix"></div>

            <div class="content-wrapper">
                <div class="container-fluid">

                    <%      if (session.getAttribute("i") != null) {
                            int i = (Integer) session.getAttribute("i");
                            String msg = (String) session.getAttribute("msg");
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
                            session.removeAttribute("i");
                            session.removeAttribute("msg");
                        }%>


                    <!--<div class="container-fluid">-->


                        <h6 class="text-uppercase">Edit Profile</h6>

                        <div class="row">
                            <div class="col-lg-2"></div>
                            <div class="col-lg-8">
                                <div class="card">
                                    <div class="card-body"> 
                                        <ul class="nav nav-tabs nav-tabs-info nav-justified">
                                            <li class="nav-item">
                                                <a class="nav-link active" data-toggle="tab" href="#tabe-13"> <span class="hidden-xs">Personal Details</span></a>
                                            </li>
                                            <!--                                        <li class="nav-item">
                                                                                        <a class="nav-link" data-toggle="tab" href="#tabe-14"><span class="hidden-xs">Bank Details</span></a>
                                                                                    </li>
                                                                                     <li class="nav-item">
                                                                                        <a class="nav-link" data-toggle="tab" href="#tabe-16"><span class="hidden-xs">Other Payment </span></a>
                                                                                    </li>-->
                                            <li class="nav-item">
                                                <a class="nav-link" data-toggle="tab" href="#tabe-15"><span class="hidden-xs">Change Password</span></a>
                                            </li>

                                        </ul>

                                        <!-- Tab panes -->
                                        <div class="tab-content">
                                            <div id="tabe-13" class="container tab-pane active">
                                                <%                                              //  MemberModel g = new MemberDao().getById(sidebarr.getId());
                                                %>



                                                <form id="form_validation" action="../ProfileUpdateServlet"  method="POST">
                                                    <!--<form id="form_validation" action="../../../FirstId" method="post">-->

                                                    <div class="row">
                                                        <%
                                                            AdminModel u = new AdminDao().getById(1);

                                                        %>
                                                        <div class="col-lg-6">
                                                            <input type="hidden" id="cid" name="id" value="<%=u.getId()%>">
                                                            <label for="personName" class="form-label">Name</label>
                                                            <input type="text" autocomplete="off" value="<%=u.getName()%>" required="" class="form-control"  name="name">
                                                        </div>

                                                        <div class="col-lg-6">

                                                            <label for="designation" class="form-label">Email </label>
                                                            <input type="text" autocomplete="off" value="<%=u.getEmail()%>" required="" class="form-control" id="designation" name="email">
                                                        </div>

                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <label for="personName" class="form-label">Mobile</label>
                                                            <input type="text" autocomplete="off" required="" value="<%=u.getMobile()%>" class="form-control" name="mobile" >
                                                        </div>

                                                        <!--                                                    <div class="col-lg-6">
                                                                                                                <label for="personName" class="form-label">Occupation</label>
                                                                                                                <input type="text" autocomplete="off" required="" value="" class="form-control onlytext" name="Occupation" >
                                                                                                            </div>-->

                                                        <!--                                                </div>
                                                                                                        <div class="row">
                                                                                                            <div class="col-lg-6">
                                                                                                                <label for="Age" class="form-label">Age</label>
                                                                                                                <input type="number" autocomplete="off" required="" value="" class="form-control" name="Age" > 
                                                                                                            </div>-->

                                                        <div class="col-lg-6">



                                                            <!--                                                        <label for="Age" class="form-label">Gender</label>
                                                                                                                    <select class="form-control" name="Gender" id="basic-select">
                                                                                                                        <option value=""></option>
                                                                                                                        <option value="Male">Male</option>
                                                                                                                        <option value="Female">Female</option>
                                                            
                                                                                                                    </select>-->



                                                        </div>

                                                        <!--                                                </div>
                                                                                                        <div class="row">
                                                                                                            <div class="col-lg-6">
                                                                                                                <label for="personName" class="form-label">Pan Number</label>
                                                                                                                <input type="text" autocomplete="off" required="" value="" class="form-control" name="PanNum" >
                                                                                                            </div>-->

                                                        <!--                                                    <div class="col-lg-6">
                                                                                                                <label for="personName" class="form-label">Aadhaar Number</label>
                                                                                                                <input type="text" autocomplete="off" required="" value="" class="form-control" name="AadhaarNum" >
                                                                                                            </div>-->

                                                    </div>

                                                    <div class="row">
                                                        <!--                                                    <div class="col-lg-6">
                                                                                                               <label for="personName" class="form-label">Member Of charch</label>
                                                                                                                <input type="text" autocomplete="off" required="" value="" class="form-control onlytext" name="MemCharch" >
                                                                                             
                                                                                                            </div>-->
                                                        <!--                                                    <div class="col-lg-6">
                                                                                                                <label for="personName" class="form-label">City</label>
                                                                                                                <input type="text" autocomplete="off" required="" value="" class="form-control onlytext" name="City" >
                                                                                                            </div>-->



                                                    </div>







                                                    <div class="form-group row float-right">
                                                        <!--                                                    <label for="input-1" class="col-sm-4 col-form-label"></label>-->
                                                        <div class="col-sm-12 ">
                                                            <button class="btn btn-gradient-scooter waves-effect waves-light m-1" type="submit">Update</button>
                                                        </div>
                                                    </div>
                                                    <!--                                <button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>-->
                                                </form>

                                            </div>



                                            <div id="tabe-15" class="container tab-pane fade">
                                                <form id="form_validation" action="../ChangePassword"  method="POST">
                                                    <input type="hidden" id="id"  name="id" value="<%=u.getId()%>">
                                                    <!--<form id="form_validation" action="../../../FirstId" method="post">-->

                                                    <div class="row">

                                                        <div class="col-lg-6">
                                                            <label for="personName" class="form-label">Reset Password</label>
                                                            <input type="text" autocomplete="off" required="" value="<%=u.getPwd()%>" placeholder="Reset" class="form-control" name="pwd">
                                                        </div>

                                                        <!--                                                    <div class="col-lg-6">
                                                        
                                                                                                                <label for="designation" class="form-label">Transaction Password</label>
                                                                                                                <input type="text" tocomplete="off"  required="" class="form-control"  name="TPassword">
                                                                                                            </div>-->

                                                    </div>

                                                    <div class="form-group row float-right">
                                                        <!--                                                    <label for="input-1" class="col-sm-4 col-form-label"></label>-->
                                                        <div class="col-sm-12 ">
                                                            <button class="btn btn-gradient-scooter waves-effect waves-light m-1" type="submit">Update</button>
                                                        </div>
                                                    </div>



                                                </form>

                                            </div>

                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-2"></div>
                        </div><!--End Row-->
                    </div>
                </div>
            <!--</div>-->
            <!-- End container-fluid-->

        <!--</div>End content-wrapper-->
        <!--Start Back To Top Button-->
        <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
        <!--End Back To Top Button-->

        <!--Start footer-->
        <%@include file="Footer.jsp" %>
        <!--End footer-->

  <!--End wrapper-->

    <script>
        $(".onlytext").on("keyup", function() {
            var valid = /^[a-zA-Z\s-, ]+$/.test(this.value),
                    val = this.value;

            if (!valid) {


//         $('.Nameerrortext').show();
                this.value = val.substring(0, val.length - 1);
            }
        });

    </script>
    <script>

        // var catid;
        // var type;
        $("#select1").on('change', function() {
            //alert($(this).val());
            // alert($(this).find('option:selected').attr('value'));
            // alert($(this).find('option:selected').attr('name'));
            catid = $(this).find('option:selected').attr('value');
            type = $(this).find('option:selected').attr('name');
            document.getElementById('ctype').setAttribute("value", type);
            document.getElementById('cid').setAttribute("value", catid);
            document.getElementById('id').setAttribute("value", catid);
            alert(catid);
            alert(type);
            cookievalue = escape(type) + ";";
            document.cookie = "cname=" + cookievalue;
            cookievalue = escape(catid) + ";";
            document.cookie = "cid=" + cookievalue;

        });


    </script>
    <!-- Bootstrap core JavaScript-->
    <%@include file="Script.jsp" %>
</body>

<!-- Mirrored from codervent.com/rocker/color-version/ui-nav-tabs.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:36:28 GMT -->
</html>
