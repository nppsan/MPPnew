<%-- 
    Document   : Category
    Created on : Nov 23, 2020, 1:28:07 PM
    Author     : npp
--%>

<%@page import="Com.Admin.Dao.CustDetailsDao"%>
<%@page import="Com.Admin.Model.CustDetailsModel"%>
<%@page import="Com.Admin.Dao.ProductDao"%>
<%@page import="Com.Admin.Model.ProductModel"%>
<%@page import="java.util.List"%>
<%@page import="Com.Admin.Dao.CategoryDao"%>
<%@page import="Com.Admin.Model.CategoryModel"%>
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
        <link rel="stylesheet" href="/styleN.css" type="text/css">
      <style>
          #div-tb { margin-top: 50px;}
          #tb1 th{ font-size: smaller; text-align: justify; margin-top: 20px;}
          #tb2  th { background-color: #00043c; color: #FAFAFA; height: 22px }
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
 
<!--            <input type="submit" name="btnSubmit" value="Submit" onClick="Submit" align="center">-->

            
            
                <h3 style="text-align: center; color: #2c527d">ADD CUSTOMER DETAILS</h3>
                
                    <div class="container-fluid">
                <div id="div-tb">
                    
                </div>
                </div>
                    
            <script> 
            // JavaScript program to illustrate 
            // Table sort for both columns and both directions. 
            function sortTable(n) { 
                var table; 
                table = document.getElementById("tb2"); 
                var rows, i, x, y, count = 0; 
                var switching = true; 
  
                // Order is set as ascending 
                var direction = "ascending"; 
  
                // Run loop until no switching is needed 
                while (switching) { 
                    switching = false; 
                    var rows = table.rows; 
  
                    //Loop to go through all rows 
                    for (i = 1; i < (rows.length - 1); i++) { 
                        var Switch = false; 
  
                        // Fetch 2 elements that need to be compared 
                        x = rows[i].getElementsByTagName("TD")[n]; 
                        y = rows[i + 1].getElementsByTagName("TD")[n]; 
  
                        // Check the direction of order 
                        if (direction == "ascending") { 
  
                            // Check if 2 rows need to be switched 
                            if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) 
                                { 
                                // If yes, mark Switch as needed and break loop 
                                Switch = true; 
                                break; 
                            } 
                        } else if (direction == "descending") { 
  
                            // Check direction 
                            if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) 
                                { 
                                // If yes, mark Switch as needed and break loop 
                                Switch = true; 
                                break; 
                            } 
                        } 
                    } 
                    if (Switch) { 
                        // Function to switch rows and mark switch as completed 
                        rows[i].parentNode.insertBefore(rows[i + 1], rows[i]); 
                        switching = true; 
  
                        // Increase count for each switch 
                        count++; 
                    } else { 
                        // Run while loop again for descending order 
                        if (count == 0 && direction == "ascending") { 
                            direction = "descending"; 
                            switching = true; 
                        } 
                    } 
                } 
            } 
        </script>
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
