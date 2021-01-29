<%-- 
    Document   : CategoryUpdate
    Created on : Nov 26, 2020, 11:02:29 PM
    Author     : npp
--%>

<%@page import="java.util.List"%>
<%@page import="Com.Admin.Model.CategoryModel"%>
<%@page import="Com.Admin.Dao.CategoryDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
          #div-tb { margin-top: 50px;}
          #Category { max-width: 100% }
          #tb1 th{ font-size: smaller; text-align: center }
          #tb2 { margin-top: 10% }
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
        
        <div class="container text-center">
            <div class="container-fluid">
               <div class=" row col-md-10 regform text-center">
                   
                   <%
                   String id=request.getParameter("id");
                  
                   
                   CategoryDao cd=new CategoryDao();
                   
                   
                   CategoryModel cm = cd.getById(Long.parseLong(id));
                   
                   
                   
                   %>
                   <form action="../CategoryUpdateServelet" method="POST">
                   <table id="tb1" style="margin-left: 150%; width: 120%; " >
                       <tr class="tebtr">
                       <th>Category Name</th>
                       <td> <input autocomplete="off" class="form-control" type="text" id="Category" name="Category" value="<%= cm.getCategory() %>"></td>
                       </tr>
                       
                       <tr>
                           <td>
                               <input type="hidden" value="<%=cm.getId() %>" name="id">
                           </td>
                       </tr>
                       <tr>
                           <th></th>
                           <th>
                             <button id="btn-sub" type="submit" class="btn btn-outline-primary waves-effect waves-light m-1">UPDATE</button>

                           </th>
                       </tr>
                   </table>       
                    </form>       
                </div>

                
            </div>
                           <div style="margin: auto" class="container-fluid">
                <!--<a style="float: right" href="ShowCategory.jsp" >All Category List</a>-->
                
            </div>
            
        </div>
        <div id="div-tbc">
                 <table id="tb2" class ='container-fluid table table-hover table table-light table-striped shadow-light  animated bounceInDown'  
                   style='
                   border: solid black;
                   
                   
                   color: black;
             border-style: solid; 
                   width:60%; 
                   text-align: center; 
                   
                   '>
                
                <th >ID</th>
                <th onclick="sortTable(1)"> Category <i class="fa fa-sort" aria-hidden="false"></i></th>
                <th > Update </th>  
              
                <th > Delete </th> 

                <%

                    List<CategoryModel> s = new CategoryDao().getAll();
                    for (CategoryModel p : s) 
                    {
                 
                %>
                <tr style="border-width: 1px; border: lightslategray">     
                    <td><%=p.getId() %></td>
                    <td><%=p.getCategory()%></td>
                    <td> <a href="CategoryUpdate.jsp?id=<%=p.getId()%>"><button class="btn btn-success btn-sm waves-effect waves-light m-1"
                                style="
                                        border-radius: 10%;
                                        background: rgb(53, 53, 104);
                                        border: double;
                                        color: white;
                                        cursor: pointer;
                                        
                                        ">
                                Update</button></a></td>
                    
                    <td> <a href="../CategoryDeleteServlet?id=<%=p.getId()%>"><button  class="btn btn-danger btn-sm waves-effect waves-light m-1"
                                style="
                                        border-radius: 10%;
                                        background: red;
                                        border: double;
                                        color: white;
                                      cursor: pointer;
                                        ">
                                Delete</button></a></td>


                </tr> 


<%
                    }   
%>

            </table>
     
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
