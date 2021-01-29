


<%@page import="Com.Admin.Dao.ProductDao"%>
<%@page import="Com.Admin.Model.ProductModel"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <link href="css/styleN.css" rel='stylesheet' type='text/css'/>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css'/>
        <link href="css/mycss.css" type="text/css" rel="stylesheet"/>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <style>
            th {
                background-color: #00043c;
            }
        </style>
        
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
            </div>
        <h3 style="padding-left: 25%"> Available Products 
            <span style="float: right"> <a style="padding-right: 30px" href="AddProduct.jsp" class="text-right"> Add Product</a>
            </span>
        </h3>


        
            <table class ='container-fluid table table-hover table table-primary table-striped shadow-primary' 
                   style='
/*                  // border: solid black;
                   
                   
                   //color: black;
                   //border-style: solid; */
                   width:60%; 
                   text-align: center; 
                   
                   '>
                
                <th> ID </th>
                <th> Category ID </th>
                <th> Category Name </th>
                <th> Product Name </th>
                <th> Size </th>
                <th> Rate </th>
                <th> Update </th>  
              
                <th> Delete </th> 

                <%

                    List<ProductModel> s = new ProductDao().getAll();
                    for (ProductModel p : s) 
                    {
                 
                %>
                <tr style="border-width: 1px; border: lightslategray">     
                    <td><%=p.getId() %></td>
                    <td><%=p.getCatid() %></td>
                    <td><%=p.getType() %></td>
                    <td><%=p.getPname() %></td>
                    <td><%=p.getPsize() %></td>
                    <td><%=p.getRate() %></td>
                    <td> <a href="ProductUpdate.jsp?id=<%=p.getId()%>"><button class="btn btn-success btn-sm waves-effect waves-light m-1"
                                style="
/*                     //                   border-radius: 10%;
                       //                 background: rgb(53, 53, 104);
                         //               border: double;
                           //             color: white;
                             //           cursor: pointer;*/
                                        
                                        ">
                                Update</button></a></td>
                    
                    <td> <a href="../CategoryDeleteServlet?id=<%=p.getId()%>"><button class="btn btn-danger btn-sm waves-effect waves-light m-1"
                                style="
/*                                        border-radius: 10%;
                                        background: red;
                                        border: double;
                                        color: white;
                                        cursor: pointer;*/
                                        ">
                                Delete</button></a></td>


                </tr> 


<%
                    }   
%>

            </table>
     
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

       
    </body>
</html>
