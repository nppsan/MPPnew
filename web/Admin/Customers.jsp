<%-- 
    Document   : Customers
    Created on : 2 Mar, 2021, 10:40:11 AM
    Author     : NPP
--%>

<%@page import="Com.Admin.Dao.CustDetailsDao"%>
<%@page import="Com.Admin.Model.CustDetailsModel"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
                    <div style="float:right; display:inline; "  id="new_cust" class="col-sm-11">
                        <div class="card">
                            <div class="card-body">
                                <div style="" >
                                    <!--<button id="existing" onclick="showTb()" type="button" class="btn btn-primary waves-effect waves-light m-1">Existing Customer</button>-->
                                    <label for="input-1" class="col-sm-4 col-form-label"></label>
                                    <button id="new" onclick="showForm()" type="button" class="btn btn-success waves-effect waves-light m-1"> New Customer </button>
                                </div>
                            </div></div></div>
                    <br><br>
                    <div style="float:right; display:inline; "  id="sel_cust" class="col-sm-11">
                        <div class="card">
                            <div class="card-body">
                                <div id="div-tb">
                                    <div class="table-responsive">
                                        <div id="div-btn"></div>
                                        <table id="tb2" class ='table table-striped' style='display: block; margin: auto; margin-top: 10%; padding: 5px 5px 5px 5px; width:30%; text-align: center; border: #00043c '>

                                            <thead>
                                            <th style="color:  white; background-color: black"> Customer Name <i class="fa fa-table" aria-hidden="false"></i></th>

                                            <!--<th>   Select </th>-->
                                            </thead>
                                            <tbody>

                                                <%                    List<CustDetailsModel> s1 = new CustDetailsDao().getAll();
                                                    for (CustDetailsModel p : s1) {

                                                %>
                                                <tr style="border-width: 1px; border: lightslategray">     


                                                    <td><%=p.getCustName()%></td>

<!--<td> <a class="getc" id="<%=p.getId()%>"><button  class="btn btn-success btn-sm waves-effect waves-light m-1">Select</button></a></td>-->



                                                </tr> 


                                                <%
                                                    }
                                                %>
                                            </tbody>
                                        </table> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <div style="float:right; display:inline"  class="col-sm-11">
                        <form style="display: none;" id="form1" action="../AddCustDetailsServlet" method="POST"> 


    <!--<input style="width:100px; float:right" name="innumber" value="<%//=inv%>" type="text" id="innumber" readonly="readonly" class="form-control">-->
                            <!--<label style="float:right" for="readonly-input" class="col-sm-3 col-form-label">Invoice Number</label>-->
                            <div id="output">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="card-title">CUSTOMER DETAILS</div>
                                        <hr>

                                        <form>
                                            <div class="form-group row">
                                                <label  class="col-sm-6 col-form-label">Personal Details</label>
                                            </div>
                                            <div class="form-group row">

                                                <div class="col-sm-3">
                                                    <input name="cname" type="text" class="form-control" id="cname" placeholder="Name">
                                                </div>
                                                <div class="col-sm-3">
                                                    <input name="cemail" type="text" class="form-control" id="cemail" placeholder="Email">
                                                </div>
                                                <div class="col-sm-3">
                                                    <input type="text" name="cmobile" class="form-control" id="cmobile" placeholder="Mobile">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label  class="col-sm-6 col-form-label">Address Details</label>
                                            </div>
                                            <div class="form-group row">

                                                <div class="col-sm-3">
                                                    <input type="text" name="cap" class="form-control" id="cap" placeholder="Address Line 1">
                                                </div>
                                                <div class="col-sm-3">
                                                    <input type="text" name="ctal" class="form-control" id="ctal" placeholder="Taluka">
                                                </div>
                                                <div class="col-sm-3">
                                                    <input type="text" name="cdist" class="form-control" id="cdist" placeholder="District">
                                                </div>
                                            </div>

                                            <div class="form-group row">

                                                <div class="col-sm-3">
                                                    <input type="text" name="cstate" class="form-control" id="cstate" placeholder="State">
                                                </div>
                                                <div class="col-sm-3">
                                                    <input type="text" name="cstcode" class="form-control" id="cstcode" placeholder="State Code">
                                                </div>

                                            </div>
                                            <div class="form-group row">
                                                <label  class="col-sm-6 col-form-label">Identification Details</label>
                                            </div>
                                            <div class="form-group row">

                                                <div class="col-sm-3">
                                                    <input type="text" name="cgstaadhar" class="form-control" id="cgstaadhar" placeholder="GSTN/AADHAR">
                                                </div>
                                            </div>

                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="input-1" class="col-sm-2 col-form-label"></label>
                                <div class="col-sm-11">
                                    <label for="input-1" class="col-sm-4 col-form-label"></label>
                                    <button type="submit" id="btn1" onclick="showForm2()" class="btn btn-primary shadow-primary px-5"><i class="icon-lock"></i> SAVE</button>
                                </div>
                            </div>





                        </form></div>
                </div>
            </div>
        </div>
        <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
        <!--Start footer-->
        <%@include file="Footer.jsp" %>
        <!--End footer-->
    </div>
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
                            function showForm() {
                                document.getElementById("form1").style.display = "block";
                                document.getElementById("tb2").style.display = "none";
                                var tb = $('#tb2').DataTable();
                                tb.destroy();
                                // document.getElementById("new").style.display = "none"; 
//               $("#existing").hide();
                                $("#new_cust").hide();
                                $("#sel_cust").hide();
                            }
                            function  showTb() {

                                //window.location="SelectCustomer.jsp";
                                document.getElementById("form1").style.display = "none";
                                document.getElementById("tb2").style.display = "block";
                                $('#tb2').DataTable();


                            }
                            $(document).ready(function() {
                                //Default data table
//                $('#tb2').DataTable();


                                var table = $('#tb2').DataTable({
                                    lengthChange: false,
                                    buttons: ['copy', 'excel', 'pdf', 'print']
                                });

                                table.buttons().container()
                                        .appendTo('#div-btn');

                            });

</script>
</body>
</html>
