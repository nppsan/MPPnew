
<%@page import="Com.Admin.Dao.CustDetailsDao"%>
<%@page import="Com.Admin.Model.CustDetailsModel"%>
<%@page import="Com.Admin.Model.CategoryModel"%>
<%@page import="Com.Admin.Dao.CategoryDao"%>
<%@page import="Com.Admin.Model.ProductModel"%>
<%@page import="Com.Admin.Dao.ProductDao"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.time.temporal.ChronoUnit"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" session="false"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<%
    HttpSession sessions = request.getSession(false);
            if (sessions == null )
            {
                
                 System.err.println("Session not started, Login first");
                 response.sendRedirect("Login.jsp");
%>

                <script>//window.open("Login.jsp"); </script>
<% 

                    return;
            }else {
                if(sessions.getAttribute("user")== null)
                {
                    response.sendRedirect("Login.jsp");
                    return;
                }
            }
           // List<CustDetailsModel> cm = new CustDetailsDao().getAll();
//            CustDetailsDao cd = new CustDetailsDao();
//            if(cd.getById(1)==null){
//            CustDetailsModel p1 = new CustDetailsModel();
//    
//            p1.setId(1L);
//            p1.setAddrAP("KOP");
//            p1.setAddrDist("NG");
//            p1.setAddrState("MH");
//            p1.setAddrTal("KOP");
//            p1.setCustName("Nikhil Patil");
//            p1.setEmail("nppsan@gmail.com");
//            p1.setGstnAadhar("1234567891011");
//            p1.setMobile("9970356634");
//            p1.setInvNum(1000);
//            p1.setStateCode(27);
//            
//            
//            boolean t = cd.save(p1);
//            System.out.println(t);
//            System.out.println(p1);
//            }
    
%>
<script> 
//    window.close(); 
//    window.open("AdminHome.jsp");
//    window.location.reload();
</script>

<html lang="en">

    <!-- Mirrored from codervent.com/rocker/color-version/table-data-tables.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:50:15 GMT -->
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <%@include file="Title.jsp" %>
        <!-- simplebar CSS-->
        <link href="assets/plugins/simplebar/css/simplebar.css" rel="stylesheet"/>
        <!-- Bootstrap core CSS-->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
        <!--Data Tables -->
        <link href="assets/plugins/bootstrap-datatable/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css">
        <link href="assets/plugins/bootstrap-datatable/css/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css">
        <!-- animate CSS-->
        <link href="assets/css/animate.css" rel="stylesheet" type="text/css"/>
        <!-- Icons CSS-->
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css"/>
        <!-- Sidebar CSS-->
        <link href="assets/css/sidebar-menu.css" rel="stylesheet"/>
        <!-- Custom Style-->
        <link href="assets/css/app-style.css" rel="stylesheet"/>
        <script src="js/Alertajax.js" type="text/javascript"></script>
        <link href="Css/newcss.css" rel="stylesheet" type="text/css"/>
        
        
        <script src="//code.jquery.com/jquery-1.12.1.min.js"></script>
        <script src="dist/jquery.userTimeout.js"></script>
        <link rel="stylesheet" href="bootstrap.min.css">
        <script src="bootstrap.min.js"></script>
    </head>

    <body>
        <script type="text/javascript">
            
//            $(document).userTimeout({
//                logouturl: "Admin/Login.jsp",
//               // session: 3000
//                });
//              $(document).userTimeout({
//
//                    // ULR to redirect to, to log user out
//                    logouturl: null,              
//
//                    // URL Referer - false, auto or a passed URL     
//                    referer: false,            
//
//                    // Name of the passed referal in the URL
//                    refererName: 'refer',        
//
//                    // Toggle for notification of session ending
//                    notify: true,                      
//
//                    // Toggle for enabling the countdown timer
//                    timer: true,             
//
//                    // 10 Minutes in Milliseconds, then notification of logout
//                    session: 600000,                   
//
//                    // 5 Minutes in Milliseconds, then logout
//                    force: 300000,       
//
//                    // Model Dialog selector (auto, bootstrap, jqueryui)              
//                    ui: 'auto',                        
//
//                    // Shows alerts
//                    debug: false,            
//
//                    // <a href="https://www.jqueryscript.net/tags.php?/Modal/">Modal</a> Title
//                    modalTitle: 'Session Timeout',     
//
//                    // Modal Body
//                    modalBody: 'You\'re being timed out due to inactivity. Please choose to stay signed in or to logoff. Otherwise, you will logged off automatically.',
//
//                    // Modal log off button text
//                    modalLogOffBtn: 'Log Off',  
//
//                    // Modal stay logged in button text        
//                    modalStayLoggedBtn: 'Stay Logged In'  
//    HttpSession. setMaxInactiveInterval(int seconds)
//                });
            function preloadFunc()
            {
                 alert("PreLoad");
                 window.location = "../AdminHomeServlet";
                }
           // window.onpaint = preloadFunc();
            </script>
        <!-- Start wrapper-->
        <div id="wrapper">

            <!--Start sidebar-wrapper-->
            <%@include file="Sidebar.jsp" %>
            <!--End sidebar-wrapper-->

            <!--Start topbar header-->
            <%@include file="Topbar.jsp" %>
            <!--End topbar header-->

            <div class="clearfix"></div>

            <div class="content-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header d100">

                                    <div class="col-lg-12 d100">
                                        <div class="col-lg-3 d33">
                                            <div class="form-group">
                                                <label class="control-label mb-10 text-left"> pick from date</label>
                                                <div class='input-group date' id='ok'>
                                                    <input type='date' id="fromdate" class="form-control" />

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 d33">
                                            <div class="form-group">
                                                <label class="control-label mb-10 text-left">pick to date</label>
                                                <div class='input-group date' id='ok'>
                                                    <input type='date' id="todate" class="form-control" />

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 d33">
                                            <div class="form-group">
                                                <label class="control-label mb-10 text-left">&nbsp;</label>
                                                <div class='input-group date' >
                                                    <a id="btnclick" class="btn btn-md btn-danger go text-white" >GET</a>

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>


                        <div class="col-lg-12">
                            <div class="card">

                                <!--<div class="card-header"><i class="fa fa-table"></i>All Members </div>-->
                                <div class="card-body">

                                    <div class="table-responsive">
                                        <div id="LDiv">

                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div><!-- End Row-->
                    </div><!-- End Row-->
                    <br><br><br>


                </div>
                <!-- End container-fluid-->
                <%
                List<ProductModel> s = new ProductDao().getAll();
                  
                List<CategoryModel> s1 = new CategoryDao().getAll();
                
                %>
                
                <div class="col-12 col-lg-6 col-xl-3 border-secondary-light">
		      <div class="card-body">
              <div class="media">
              <div class="media-body text-left">
                <h4 class="text-success"><%=s1.size()%></h4>
                <span style="color: #040505" class="text-dark"> Categories</span>
              </div>
              <div class="align-self-center w-circle-icon rounded bg-success shadow-success">
                <i class="icon-pie-chart text-white"></i></div>
            </div>
            </div>
            </div>
                <!--End Number of Categories-->
                
                <div class="col-12 col-lg-6 col-xl-3 border-secondary-light">
		      <div class="card-body">
              <div class="media">
              <div class="media-body text-left">
                <h4 class="text-success"><%=s.size()%></h4>
                <span style="color: #040505" class="text-dark"> Products</span>
              </div>
              <div class="align-self-center w-circle-icon rounded bg-success shadow-success">
                <i class="icon-pie-chart text-white"></i></div>
            </div>
            </div>
                <!--End Number of Products-->
                <!--Start of Row-->
              
                
            </div>
                <div class="modal  fade" id="ContactModel">
                    <div class="modal-dialog ">
                        <div class="modal-content border-primary">
                            <div class="modal-header bg-primary">
                                <h5 class="modal-title text-white"><i class="fa fa-star"></i>Bank Details</h5>
                                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div id="PayID"></div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-inverse-primary" data-dismiss="modal"><i class="fa fa-times"></i> OK</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--End content-wrapper-->
            <!--Start Back To Top Button-->
            <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
            <!--End Back To Top Button-->
            <div class="modal fade" id="modal-animation-10">
                <div class="modal-dialog">
                    <div class="modal-content animated bounceIn">
                        <div class="modal-header">
                            <h5 class="modal-title">
                                <i class="fa fa-star"></i> Delete User</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>Are you sure to delete User</p>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary clsbtn" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                            <a class="btn btn-primary myid" id="ok" data-dismiss="modal"><i class="fa fa-check-square-o"></i>Delete </a>
                        </div>
                    </div>
                </div>
            </div>
            <!--Start footer-->
            <%@include file="Footer.jsp" %>
            <!--End footer-->

        </div><!--End wrapper-->

        <script>
            $('document').ready(function() {
                $('.paidbtn').click(function() {
                    var id = this.id;

                    $.get("Ajax/PaidAjax.jsp", {id: id}, function(data) {
                        $('#statusID').html(data);
                    });
                });
                $('.RecvedBtn').click(function() {
                    var id = this.id;
                    $.get("Ajax/RecivedAjax.jsp", {id: id}, function(data) {
                        $('#RecIDSpan').html(data);
                    });
                });


                $('.deleteID').click(function() {
                    // alert("ffff");
//deelteID
                    var MemId = this.id;

                    $('.myid').click(function() {

                        $.get("Ajax/DeleteUser.jsp", {MemId: MemId}, function(data) {
                            $('#LDiv').html(data);
                        });
                    });
//                    alert("mem" + MemId);

//                  window.location.reload();
                });
            });
        </script>
        <script>
            $('document').ready(function() {

                $('.go').click(function() {

                    var fromdate = $("#fromdate").val();
                    var todate = $("#todate").val();

                    $.get("Ajax/GetMember.jsp", {fromdate: fromdate, todate: todate}, function(data) {


                        $('#LDiv').html(data);
                    });
                    //                    location.reload();
                });
                var today = moment().format('YYYY-MM-DD');
                document.getElementById("todate").value = today;
                document.getElementById("fromdate").value = today;
            });
        </script>
        <!-- Bootstrap core JavaScript-->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- simplebar js -->
        <script src="assets/plugins/simplebar/js/simplebar.js"></script>
        <!-- waves effect js -->
        <script src="assets/js/waves.js"></script>
        <!-- sidebar-menu js -->
        <script src="assets/js/sidebar-menu.js"></script>
        <!-- Custom scripts -->
        <script src="assets/js/app-script.js"></script>

        <!--Data Tables js-->
        <script src="assets/plugins/bootstrap-datatable/js/jquery.dataTables.min.js"></script>
        <script src="assets/plugins/bootstrap-datatable/js/dataTables.bootstrap4.min.js"></script>
        <script src="assets/plugins/bootstrap-datatable/js/dataTables.buttons.min.js"></script>
        <script src="assets/plugins/bootstrap-datatable/js/buttons.bootstrap4.min.js"></script>
        <script src="assets/plugins/bootstrap-datatable/js/jszip.min.js"></script>
        <script src="assets/plugins/bootstrap-datatable/js/pdfmake.min.js"></script>
        <script src="assets/plugins/bootstrap-datatable/js/vfs_fonts.js"></script>
        <script src="assets/plugins/bootstrap-datatable/js/buttons.html5.min.js"></script>
        <script src="assets/plugins/bootstrap-datatable/js/buttons.print.min.js"></script>
        <script src="assets/plugins/bootstrap-datatable/js/buttons.colVis.min.js"></script>

        <script>
            $(document).ready(function() {
                //Default data table
                $('#default-datatable').DataTable();


                var table = $('#example').DataTable({
                    lengthChange: false,
                    buttons: ['copy', 'excel', 'pdf', 'print', 'colvis']
                });

                table.buttons().container()
                        .appendTo('#example_wrapper .col-md-6:eq(0)');

            });

        </script>

    </body>

    <!-- Mirrored from codervent.com/rocker/color-version/table-data-tables.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:53:17 GMT -->
</html>
