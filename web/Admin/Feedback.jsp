

<%@page import="Com.Admin.Dao.FeedbackDao"%>
<%@page import="Com.Admin.Model.FeedbackModel"%>
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
           
                 
            
            
           
                    
            <div style="margin-left: 15%" class="col-sm-10">
          <div class="card">
            <div class="card-header">
                <i class="fa fa-table"></i>
         
            </div>
            <div class="card-body">
              <div class="table-responsive">
              <div id="default-datatable_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4">
                  <div class="row">
                      <div class="col-sm-12 col-md-6">
                          <div class="dataTables_length" id="default-datatable_length">
<!--                              <label>Show 
                                  <select name="default-datatable_length" aria-controls="default-datatable" class="form-control form-control-sm">
                                      <option value="10">10</option>
                                      <option value="25">25</option>
                                      <option value="50">50</option>
                                      <option value="100">100</option>
                                  </select> entries
                              </label>-->
                          </div>
                      </div>
                      <div class="col-sm-12 col-md-6">
                          <div id="default-datatable_filter" class="dataTables_filter">
<!--                              <label>Search:
                                  <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="default-datatable">
                              </label>-->
                          </div>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col-sm-15">
                          <table style="width: 100%;" id="default-datatable" class="table table-bordered dataTable" role="grid" aria-describedby="default-datatable_info">
                <thead>
                    <tr role="row">
                        <th class="sorting_asc" tabindex="0" aria-controls="default-datatable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 15px;">No.</th>
                        <th class="sorting" tabindex="0" aria-controls="default-datatable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 150px;">Name</th>
                        <th class="sorting" tabindex="0" aria-controls="default-datatable" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 90px;">Subject</th>
                        <th class="sorting" tabindex="0" aria-controls="default-datatable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 60px;">Email</th>
                        <th class="sorting" tabindex="0" aria-controls="default-datatable" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 124px;">Mobile</th>
                        <th class="sorting" tabindex="0" aria-controls="default-datatable" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 177px;">Feedback</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                
                
                
                
                
                <tbody>
                    
                                                <%
                                                     int i = 1;
                                                        List<FeedbackModel> s = new FeedbackDao().getAll();
                                                        for (FeedbackModel p : s) 
                                                        {

                                                  
                                                %>
                                                <tr>
                                                    <td><%=i%></td>
                                                    <td><%=p.getName() %></td>  
                                                    <td><%=p.getSub() %></td>
                                                    <td><%=p.getEmail() %></td>
                                                    <td><%=p.getMobile() %></td>
                                                    <td><%=p.getFeedback() %></td>
                                                    
                                                                      
                                                    <td><a href="../FeedbackDeleteServlet?id=<%=p.getId()%>" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> </a></td>

                                                </tr>
                                                <%
                                                        i++;
                                                        }
                                                %>
                    
                    
                    
                    </tbody>
<!--                <tfoot>
                    <tr><th rowspan="1" colspan="1">No.</th><th rowspan="1" colspan="1">Name</th><th rowspan="1" colspan="1">Subject</th><th rowspan="1" colspan="1">Email</th><th rowspan="1" colspan="1">Mobile</th><th rowspan="1" colspan="1">Feedback</th></tr>
                </tfoot>-->
                          </table>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col-sm-12 col-md-5">
<!--                          <div class="dataTables_info" id="default-datatable_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div>-->
                              
                      </div>
                          
                            </div>
                      </div>
        
        
            </div>
          </div>
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

