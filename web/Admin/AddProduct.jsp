<%-- 
    Document   : Category
    Created on : Nov 23, 2020, 1:28:07 PM
    Author     : npp
--%>

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
        <script type = "text/javascript">
         
            function WriteCookie() {
               if( document.myform.customer.value == "" ) {
                  alert("Enter some value!");
                  return;
               }
               cookievalue = escape(document.myform.customer.value) + ";";
               document.cookie = "name=" + cookievalue;
               document.write ("Setting Cookies : " + "name=" + cookievalue );
            }
         
      </script>      
      <script type = "text/javascript">
         
            function ReadCookie() {
               var allcookies = document.cookie;
               document.write ("All Cookies : " + allcookies );
               
               // Get all the cookies pairs in an array
               cookiearray = allcookies.split(';');
               
               // Now take key value pair out of this array
               for(var i=0; i<cookiearray.length; i++) {
                  name = cookiearray[i].split('=')[0];
                  value = cookiearray[i].split('=')[1];
                  document.write ("Key is : " + name + " and Value is : " + value);
               }
            }
         
      </script>  
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

            
            
                <h3 style="text-align: center; color: #2c527d">ADD PRODUCT</h3>
                
                   
                    
            <form action="../AddProductServelet" method="POST"> 
                
                <table id="tb1" style=" width: 30%" class="container-fluid text-center">
                    <tr><th>Category</th><td>
                                
                        <select class="form-control" id="select1" style="width: 100%; " name="Category"   required="required">
                            <option> </option>
                <%

                    List<CategoryModel> s = new CategoryDao().getAll();
                    for (CategoryModel p : s) 
                    {
                 
                %>

                <option  name="<%=p.getCategory()%>" value="<%=p.getId()%>"><%=p.getCategory()%></option>
                <%
                    }   
                %>              
                </select> 
                
                </td>
                </tr> 
                
                      
                    <tr><th><input type="hidden" id="ctype" name="type" value="3487"></th></tr>
                    <tr><th><input type="hidden" id="cid" name="catid" value="3487"></th></tr>
                    <tr class="tebtr"><th>Product Name </th>
                        <td><input class="form-control" autocomplete="off" type="text" id="Product" name="Product" required="required"></td>
                    </tr>
                    <tr><th>
                            Product Size
                        </th>
                        <td>
                            <input class="form-control" autocomplete="off" type="text" id="ProductSize" name="ProductSize" required="required">
                        </td>
                    </tr>
                    <tr>
                        <th>Product Rate </th>
                        <td>
                            <input class="form-control" autocomplete="off" type="text" id="ProductRate" name="ProductRate" required="required">
                        </td>
                    </tr>
                    <tr><th></th><td><button type="submit" class="btn btn-outline-primary waves-effect waves-light m-1">ADD</button></td></tr>
                    </table>
                
                         
                        <script>
                    
                            // var catid;
                            // var type;
                            $("#select1").on('change', function () {
                                //alert($(this).val());
                                // alert($(this).find('option:selected').attr('value'));
                                // alert($(this).find('option:selected').attr('name'));
                                catid = $(this).find('option:selected').attr('value');
                                type = $(this).find('option:selected').attr('name');
                                document.getElementById('ctype').setAttribute("value",type) ;
                                document.getElementById('cid').setAttribute("value",catid) ;
                                alert(catid);
                                alert(type);
                                cookievalue = escape(type) + ";";
                                document.cookie = "cname=" + cookievalue;
                                cookievalue = escape(catid) + ";";
                                document.cookie = "cid=" + cookievalue;
                    
                                });
                  
                                function ReadCookie() {
                                    var allcookies = document.cookie;
                                    console.log(allcookies);
               
                                     // Get all the cookies pairs in an array
                                    cookiearray = allcookies.split(';');
               
                                    // Now take key value pair out of this array
                                    for(var i=0; i<cookiearray.length; i++) {
                                    name = cookiearray[i].split('=')[0];
                                    value = cookiearray[i].split('=')[1];
                                    console.log("Key is : " + name + " and Value is : " + value);
                                    }
                                }
                                //var disp= ReadCookie();
             
                                    document.getElementById('ctype').setAttribute("value",type) ;
                                    document.getElementById('cid').setAttribute("value",catid) ;
                        </script>
                
            </form>
               <div class="container-fluid">
                <div id="div-tb">
                    <table id="tb2" class ='container-fluid table table-hover table table-light table-striped shadow-light animated bounceInDown' 
                   style='
                  border: solid black;
                   
                   
                 color: black;
                 border-style: solid; 
                   margin: auto;
                   padding: 5px, 5px, 5px, 5px;
                   width:60%; 
                   text-align: center; 
                   
                   '>
                
                <th> ID </th>
                <th> Category ID </th>
                <th onclick="sortTable(2)" style="" > Category Name <i class="fa fa-sort" aria-hidden="false"></i></th>
                <th onclick="sortTable(3)"> Product Name <i class="fa fa-sort" aria-hidden="false"></i></th>
                <th onclick="sortTable(4)"> Size <i class="fa fa-sort" aria-hidden="false"></i></th>
                <th onclick="sortTable(5)"> Rate <i class="fa fa-sort" aria-hidden="false"></i></th>
                <th> Update </th>  
              
                <th> Delete </th> 

                <%

                    List<ProductModel> s1 = new ProductDao().getAll();
                    for (ProductModel p : s1) 
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
                                        border-radius: 10%;
                                        background: rgb(53, 53, 104);
                                        border: double;
                                        color: white;
                                      cursor: pointer;
                                        
                                        ">
                                Update</button></a></td>
                    
                    <td> <a href="../ProductDeleteServlet?id=<%=p.getId()%>"><button class="btn btn-danger btn-sm waves-effect waves-light m-1"
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
