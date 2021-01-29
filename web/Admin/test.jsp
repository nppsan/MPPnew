
<%@page import="Com.Admin.Model.CategoryModel"%>
<%@page import="Com.Admin.Dao.CategoryDao"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
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
    </head>

    <body>

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
                         <%
                        if (session.getAttribute("i") != null) {
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
                        <div class="col-lg-12">
                         <div class="card">  

                                <div class="card-body">
                                    <div class="card-title">Add Category</div>
                                    <hr>
                                    <form action="../CategoryServelet" method="post">
                                        <div class="form-group row">
                                            <label for="input-4" class="col-sm-2 col-form-label">Category</label>
                                            <div class="col-sm-6">
                                                <input type="text" class="form-control" required="" autocomplete="off" id="input-4" name="Category" placeholder="Enter Category">
                                            </div>
                                        </div>
                                       
                                        <div class="form-group row">
                                            <label for="input-1" class="col-sm-4 col-form-label"></label>
                                            <div class="col-sm-8">
                                                <button type="submit" class="btn btn-primary shadow-primary px-5"> Add</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                    </div>
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header"><i class="fa fa-table"></i> Category</div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table id="example" class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Sr. No.</th>
                                                    <th>Category</th>
                                                    <th>Edit</th>
                                                    <th>Delete</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                     int i = 1;
                                                        List<CategoryModel> s = new CategoryDao().getAll();
                                                        for (CategoryModel p : s) {

                                                  
                                                %>
                                                <tr>
                                                    <td><%=i%></td>
                                                    <td><%=p.getCategory() %></td>
                                                    
                                                    <td><a href="CategoryUpdate.jsp?id=<%=p.getId()%>" class="btn btn-success btn-xs"><i class="fa fa-Edit"></i>Edit </a></td>
                                                    <td><a href="../CategoryDeleteServlet?id=<%=p.getId()%>" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i>Delete </a></td>

                                                </tr>
                                                <%
                                                        i++;
                                                        }
                                                %>
                                            </tbody>

                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- End Row-->

                </div>
                <!-- End container-fluid-->

            </div><!--End content-wrapper-->
            <!--Start Back To Top Button-->
            <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
            <!--End Back To Top Button-->

            <!--Start footer-->
            <%@include file="Footer.jsp" %>
            <!--End footer-->

        </div><!--End wrapper-->



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
