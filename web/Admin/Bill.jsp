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
        <link href="assets/plugins/bootstrap-datatable/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!--<link href="assets/plugins/bootstrap-datatable/css/dataTables.bootstrap5.min.css" rel="stylesheet" type="text/css">-->
        <script src="assets/plugins/bootstrap-datatable/js/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="assets/plugins/bootstrap-datatable/js/dataTables.bootstrap5.min.js" type="text/javascript"></script>
        <script src="assets/plugins/bootstrap-datatable/js/jquery-3.5.1.js" type="text/javascript"></script>
<!--    <script src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js" type="text/javascript"></script>
        <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.js" type="text/javascript"></script>-->

<!--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" >
        <link href="component/DataTables/jquery.dataTables.min.css" rel="stylesheet" >
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"></script>-->

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
        <%
        List<CustDetailsModel> s2 = new CustDetailsDao().getAll();
        int max=s2.size();
        CustDetailsModel cd = new CustDetailsModel();
        cd=s2.get(max-1);
        int inv = cd.getInvNum();
        inv+=1;
        %>
        <!--<h1><%//=max%></h1>-->
        <!--<h1><%=inv%></h1>-->
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

            
            
                <!--<h3 style="text-align: center; color: #2c527d">ADD CUSTOMER DETAILS</h3>-->
                <div style="margin-left: 35%" >
                   <button id="existing" onclick="showTb()" type="button" class="btn btn-primary waves-effect waves-light m-1">Existing Customer</button>
                
                    <button id="new" onclick="showForm()" type="button" class="btn btn-success waves-effect waves-light m-1"> New Customer </button>
                </div>
                    
            <div class="container-fluid">
                <div class="container">
                
                <div id="div-tb">
                    <table id="tb2" class ='table table-striped ' style='display: none; margin: auto; padding: 5px 5px 5px 5px; width:30%; text-align: center; '>
                
                
                <th> Customer Name <i class="fa fa-sort" aria-hidden="false"></i></th>
              
                <th>   Select </th> 

                <%

                    List<CustDetailsModel> s1 = new CustDetailsDao().getAll();
                    for (CustDetailsModel p : s1) 
                    {
                 
                %>
                <tr style="border-width: 1px; border: lightslategray">     
                    
                    
                    <td><%=p.getCustName()%></td>
                    
                    <td> <a class="getc" id="<%=p.getId()%>" ><button  class="btn btn-success btn-sm waves-effect waves-light m-1">
                                Select</button></a></td>
                    
                   

                </tr> 


<%
                    }   
%>

                    </table> 
                    </div>
               
                  <form style="display: none;" id="form1" action="../AddCustDetailsServlet" method="POST"> 
                
                    <div style="float:right; display:inline"  class="col-sm-9">
                        <input style="width:100px; float:right" name="innumber" value="<%=inv%>" type="text" id="innumber" readonly="readonly" class="form-control">
                        <!--<label style="float:right" for="readonly-input" class="col-sm-3 col-form-label">Invoice Number</label>-->
			<div id="output">
                        <div class="card">
			     <div class="card-body">
				   <div class="card-title">CUSTOMER DETAILS</div>
				   <hr>
                                               
				    <!--<form>-->
					 <div class="form-group row">
					  <label for="input-4" class="col-sm-2 col-form-label">Name</label>
					  <div class="col-sm-10">
						<input name="cname" type="text" class="form-control" id="cname" placeholder="Enter Customer Name">
					  </div>
					</div>
					<div class="form-group row">
					  <label for="input-5" class="col-sm-2 col-form-label">Email</label>
					  <div class="col-sm-10">
						<input name="cemail" type="text" class="form-control" id="cemail" placeholder="Enter Customer Email Address">
					  </div>
					</div>
					<div class="form-group row">
					  <label for="input-6" class="col-sm-2 col-form-label">Mobile</label>
					  <div class="col-sm-10">
						<input type="text" name="cmobile" class="form-control" id="cmobile" placeholder="Enter Mobile Number">
					  </div>
					</div>
					<div class="form-group row">
					  <label for="input-4" class="col-sm-2 col-form-label">Customer's A/P</label>
					  <div class="col-sm-10">
						<input type="text" name="cap" class="form-control" id="cap" placeholder="Enter Customer At Post">
					  </div>
					</div>
                                    <div class="form-group row">
					  <label for="input-4" class="col-sm-2 col-form-label">Customer's Taluka</label>
					  <div class="col-sm-10">
						<input type="text" name="ctal" class="form-control" id="ctal" placeholder="Enter Customer Taluka">
					  </div>
					</div>
                                    <div class="form-group row">
					  <label for="input-4" class="col-sm-2 col-form-label">Customer's District</label>
					  <div class="col-sm-10">
						<input type="text" name="cdist" class="form-control" id="cdist" placeholder="Enter Customer District">
					  </div>
					</div>
                                    <div class="form-group row">
					  <label for="input-4" class="col-sm-2 col-form-label">Customer's GSTN/AADHAR Number</label>
					  <div class="col-sm-10">
						<input type="text" name="cgstaadhar" class="form-control" id="cgstaadhar" placeholder="Enter Customer GSTN/AADHAR">
					  </div>
					</div>
                                    <div class="form-group row">
					  <label for="input-4" class="col-sm-2 col-form-label">State</label>
					  <div class="col-sm-10">
						<input type="text" name="cstate" class="form-control" id="cstate" placeholder="Enter Customer State">
					  </div>
					</div>
                                    <div class="form-group row">
					  <label for="input-4" class="col-sm-2 col-form-label">State Code</label>
					  <div class="col-sm-10">
						<input type="text" name="cstcode" class="form-control" id="cstcode" placeholder="Enter Customer State Code">
					  </div>
					</div>
                                    </div>
                            	 </div>
			   </div>
			<div class="form-group row">
                            <label for="input-1" class="col-sm-2 col-form-label"></label>
                              <div class="col-sm-10">
				<button type="button" id="btn1" onclick="showForm2()" class="btn btn-primary shadow-primary px-5"><i class="icon-lock"></i> SAVE & NEXT</button>
                              </div>
			</div>
					<!--</form>-->
			
                         
                    </div>
                
                    </form>
                        
                
                        
                    <form style="display: none;" id="form2" > 
                    
                    <div style="float:right; display:inline"  class="col-sm-9">
                        <input style="width:100px; float:right" name="innumber" value="<%=inv%>" type="text" id="invNum" readonly="readonly" class="form-control">
                        <!--<label style="float:right" for="readonly-input" class="col-sm-3 col-form-label">Invoice Number</label>-->
			
                        <div class="card">
			     <div class="card-body">
				   <div class="card-title">BILLING DETAILS</div>
				   <hr>
				    <!--<form>-->
					 <div class="form-group row">
					  <label for="input-4" class="col-sm-2 col-form-label">Bill Date</label>
					  <div class="col-sm-10">
                                              <input style="width: fit-content;" name="invDate" type="date" class="form-control"  id="invDate" >
					  </div>
					</div>
					<div class="form-group row">
					  <label for="input-5" class="col-sm-2 col-form-label">RETURN CHARGES</label>
					  <div class="col-sm-10">
                                                <select name="reverseCharge" class="form-control" id="reverseCharge">
                                                    <option value="N/A">N/A</option>
                                                    <option value="YES">YES</option>
                                                    
                                                </select>
						<!--<input name="cemail" type="text" class="form-control"  placeholder="Enter Customer Email Address">-->
					  </div>
					</div>
					<div class="form-group row">
					  <label for="input-6" class="col-sm-2 col-form-label">BILLING STATE</label>
					  <div class="col-sm-10">
                                              <input type="text"  name="invState" class="form-control" id="invState" placeholder="Enter Billing State">
					  </div>
					</div>
					<div class="form-group row">
					  <label for="input-4" class="col-sm-2 col-form-label">BILLING STATE CODE</label>
					  <div class="col-sm-10">
						<input type="text" name="invStateCode" class="form-control" id="invStateCode" placeholder="Enter Billing State Code">
					  </div>
					</div>
                                        <div class="form-group row">
					  <label for="input-4" class="col-sm-2 col-form-label">MODE OF TRANSPORT</label>
					  <div class="col-sm-10">
                                              <select name="modeOfTx" class="form-control" id="modeOfTx">
                                                    <option value="BY ROAD">BY ROAD</option>
                                                    <option value="BY RAIL">BY RAIL</option>
                                                    <option value="BY AIR">BY AIR</option>
                                                    <option value="BY SHIP">BY SHIP</option>
                                                    </select>
						<!--<input type="text" name="ctal" class="form-control" id="input-b5" placeholder="Enter Customer Taluka">-->
					  </div>
					</div>
                                        <div class="form-group row">
					  <label for="input-4" class="col-sm-2 col-form-label">TRANSPORT IDENTIFICATION</label>
					  <div class="col-sm-10">
						<input type="text" name="vehicleNum" class="form-control" id="vehicleNum" placeholder="Enter Vehicle/Rail Rake Number Or Airliner/Shipliner name">
					  </div>
					</div>
                                        <div class="form-group row">
					  <label for="input-4" class="col-sm-2 col-form-label">SUPPLY DATE</label>
					  <div class="col-sm-10">
                                              <input style="width: fit-content;" name="suppDate" type="date" class="form-control" id="suppDate" >
                                              <!--<input type="text" name="cgstaadhar" class="form-control" id="input-b7" placeholder="Enter Customer GSTN/AADHAR">-->
					  </div>
					</div>
                                        <div class="form-group row">
					  <label for="input-4" class="col-sm-2 col-form-label">SUPPLY LOCATION</label>
					  <div class="col-sm-10">
						<input type="text" name="placeOfSupp" class="form-control" id="placeOfSupp" placeholder="Enter Supply Location">
					  </div>
					</div>
                                        <div class="form-group row">
					  <label for="input-4" class="col-sm-2 col-form-label">CONSIGNEE NAME</label>
					  <div class="col-sm-10">
						<input type="text" name="consName" class="form-control" id="consName" placeholder="Enter Consignee Name">
					  </div>
					</div>
                                        <div class="form-group row">
					  <label for="input-4" class="col-sm-2 col-form-label">CONSIGNEE A/P</label>
					  <div class="col-sm-10">
						<input type="text" name="consAP" class="form-control" id="consAP" placeholder="Enter Consignee A/P">
					  </div>
					</div>
                                        <div class="form-group row">
					  <label for="input-4" class="col-sm-2 col-form-label">CONSIGNEE TALUKA</label>
					  <div class="col-sm-10">
						<input type="text" name="consTal" class="form-control" id="consTal" placeholder="Enter Consignee Taluka">
					  </div>
					</div>
                                        <div class="form-group row">
					  <label for="input-4" class="col-sm-2 col-form-label">CONSIGNEE DISTRICT</label>
					  <div class="col-sm-10">
						<input type="text" name="consDist" class="form-control" id="consDist" placeholder="Enter Consignee District">
					  </div>
					</div>
                                        <div class="form-group row">
					  <label for="input-4" class="col-sm-2 col-form-label">CONSIGNEE STATE</label>
					  <div class="col-sm-10">
						<input type="text" name="consState" class="form-control" id="consState" placeholder="Enter Consignee State">
					  </div>
					</div>
                                        <div class="form-group row">
					  <label for="input-4" class="col-sm-2 col-form-label">CONSIGNEE STATE CODE</label>
					  <div class="col-sm-10">
						<input type="text" name="consStateCode" class="form-control" id="consStateCode" placeholder="Enter Consignee State Code">
					  </div>
					</div>
                                        <div class="form-group row">
					  <label for="input-4" class="col-sm-2 col-form-label">CONSIGNEE GSTN/AADHAR</label>
					  <div class="col-sm-10">
                                              <input type="text" autocomplete="consGstnAadhar" name="consGstnAadhar" value="123456789" class="form-control" id="consGstnAadhar" placeholder="Enter Consignee GSTN/Aadhar">
					  </div>
					</div>
					 <div class="form-group row">
					  <label for="input-1" class="col-sm-2 col-form-label"></label>
					  <div class="col-sm-10">
						<button type="button" id="btn2" class="btn btn-primary shadow-primary px-5"><i class="icon-lock"></i> SAVE & NEXT</button>
					  </div>
					</div>
					
                       </div>  
               </div>
               </div>
                   
                        </form>
                        
                        
                        <form style="display: none;" id="form3" action="../AddCustDetailsServlet" method="POST"> 
                        <input style="width:100px; float:right" name="innumber" value="<%=inv%>" type="text" id="invNumP" readonly="readonly" class="form-control">
                            
                            
                                
                            <div class="card" style="margin-left:20%; margin-right:10%; margin-bottom:10%">
			     <div class="card-body">
				   <div class="card-title">SELECT PRODUCTS</div>
				   <hr>
                            <div class="form-group row">
				  
				  <div class="col-sm-5">
                                      <select onchange="getproduct()" class="form-control" id="productselect">
                                          <option></option>
                                      <%
                                        List<ProductModel> s3 = new ProductDao().getAll();
                                        for (ProductModel p : s3) 
                                            {
                                      
                                      %>
					
                                            
                                      <option class="product" value="<%=p.getId()%>" ><%=p.getPname()%></option>
                                        <%
                                            }
                                        
                                        %>    
                                        </select>
                                        
                                        
				  </div>
				</div>
                                        <div class="form-group row">
                                            <label for="input-10" class="col-sm-2 col-form-label">Rate(Sq. Mt.)</label>
                                            <div id="output1" >
                                            <div class="col-sm-4">
                                                <input style="margin-bottom: 13px; margin-left: 55%" type="text" class="form-control" value="0.0" id="prate" readonly="readonly" name="rate">
                                            </div>
                                            </div>    
                                            <label for="input-11" class="col-sm-2 col-form-label">CGST(%)</label>
                                            <div class="col-sm-4">
                                                <input type="text" class="form-control" id="input-11" readonly="readonly" value="9" name="cgst">
                                            </div>
                                            <label for="input-11" class="col-sm-2 col-form-label">SAC CODE</label>
                                            <div class="col-sm-4">
                                                <input type="text" class="form-control" id="sac"  value="2536446" name="sac">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="input-10" class="col-sm-2 col-form-label">SGST(%)</label>
                                            <div class="col-sm-4">
                                                <input type="text" class="form-control" id="input-12" readonly="readonly" value="9" name="sgst">
                                            </div>
                                            <label for="input-11" class="col-sm-2 col-form-label">IGST(%)</label>
                                            <div class="col-sm-4">
                                                <input type="text" class="form-control" id="input-13" readonly="readonly" value="0" name="igst">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="input-10" class="col-sm-2 col-form-label" >Discount(%)</label>
                                            <div class="col-sm-4">
                                                <input type="text" class="form-control" autocomplete="off" id="disco" onkeyup="calc()" value="0.0" name="discount">
                                            </div>
                                            <label for="input-11" class="col-sm-2 col-form-label" >Quantity/ Sq.Mt.</label>
                                            <div class="col-sm-4">
                                                <input type="text" class="form-control" autocomplete="off" id="quant" onkeyup="calc1()" value="1.0" name="quantity">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="input-10" class="col-sm-2 col-form-label">Amount</label>
                                            <div class="col-sm-4">
                                                <input type="text" class="form-control" id="amt"  value="0.0" name="amt">
                                            </div>
                                            
                                        </div>
                                        <button style="float:right" id="btn3" disabled="disabled" type="button" class="btn btn-primary waves-effect waves-light m-1">ADD TO CART</button>
                             </div>
                        </div>
                       
                        </form>
                        
                    <!--car style="display: none;"t-->   
                    
                        <div id="cart_card" class="card" style="display: none; margin-left:20%; margin-right:10%; margin-bottom:10%" >
     <div class="card-body">
       <div class="card-title">CART DETAILS</div>
       <hr>
        <div class="form-group row">
          <div class="col-sm-10" style="color: #007d72">
                  <div id="cart">                 
                  </div>    
 
          </div>
	</div>
     </div>
    </div>
                             
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
//            d = new Date();
//            document.getElementById("input-b10").value(d);
 
 
 //invNum sac products quantity rate amt disco cgst sgst igst total
// delete cart by ID
            $('#document').ready(function() {
//  
            $('#cnfcartbtn').click(function() {
//                function del(){
//                alert('click');
//                $( ".cart" ).each(function( ) {
//                if ($ (this).click()) {
                //var id = $(this).id;
//            }
//                 alert('MainPage_'+username);
//                $(".loader").show();
                    alert("cart confirmed");

                $.ajax({
                    url: "Ajax/ConfirmCartAjax.jsp",
                    type: "post",
                    data: {},
                    complete: function(jqXHR, textStatus) {

                    },
//                    $(document).ajaxStart(function() {
//                        alert("Start");
//                    });
                    success: function(response) {
//                        alert('hi112')
//                        $(".loader").hide();
//                        $("#tb2").hide();
//                        $("#form1").show();
//                        $("#output").html(response);
                        var url = 'Invoice.jsp';
                        $(location).prop('href', url);
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                        console.log(textStatus, errorThrown);
                        alert("Something Went Wrong...!!!");
                    }
                });

//    } 
//            }
            });
        });
            
            
//            invNum pname prate quant amt disco
            $('#document').ready(function() {
//                    alert("ok");
                  $('.deleteID').click(function() {
                    
//deelteID
                    var MemId = this.id;
                     alert("ffff"+MemId);

//                    $('.myid').click(function() {
//
//                        $.get("Ajax/DeleteUser.jsp", {MemId: MemId}, function(data) {
//                            $('#LDiv').html(data);
//                        });
//                    });
//                    alert("mem" + MemId);

//                  window.location.reload();
                });
                $('#btn3').click(function() {
                   //alert('click');
                    var invNumP = document.getElementById("invNumP").value;
                    var pname = $("#productselect").find('option:selected').text();
                    var prate = document.getElementById("prate").value;
                    var quant = document.getElementById("quant").value;
                    var disco = document.getElementById("disco").value;
                    var amt = document.getElementById("amt").value;
                    var sac = document.getElementById("sac").value;
                    
//                  alert('MainPage_'+username);
//                  $(".loader").show();
//                    alert(invNumP);
//                    alert(pname);

                    $.ajax({
                        url: "Ajax/AddShowCartAjax.jsp",
                        type: "post",
                        data: { 
                            invNum : invNumP, 
                            pname : pname, 
                            prate : prate, 
                            quant : quant, 
                            disco : disco, 
                            amt : amt,
                            sac : sac
                            
                        },
                        complete: function(jqXHR, textStatus) {

                        },
//                    $(document).ajaxStart(function() {
//                        alert("Start");
//                    });
                        success: function(response) {
//                        alert('hi112')
//                        $(".loader").hide();
//                            $("#form1").hide();
                            $("#cart_card").show();
//                            
                        $("#cart").html(response);
                        },
                        error: function(jqXHR, textStatus, errorThrown) {
                            console.log(textStatus, errorThrown);
                            alert("Something Went Wrong...!!!");
                        }
                    });



                });
            });
            
            
            
            
            
// invNum invDate reverseCharge invState invStateCode modeOfTx vehicleNum suppDate placeOfSupp consName consAP consTal consDist consGstnAadhar consState consStateCode
            
            $('#document').ready(function() {
  
                $('#btn2').click(function() {
//                   alert('click');
                    var invNum = document.getElementById("invNum").value;
                    var invDate = document.getElementById("invDate").value;
                    var reverseCharge = $("#reverseCharge").find('option:selected').attr('value');
                    var invState = document.getElementById("invState").value;
                    var invStateCode = document.getElementById("invStateCode").value;
                    var modeOfTx = $("#modeOfTx").find('option:selected').attr('value');
                    var vehicleNum = document.getElementById("vehicleNum").value;
                    var suppDate = document.getElementById("suppDate").value;
                    var placeOfSupp = document.getElementById("placeOfSupp").value;
                    var consName = document.getElementById("consName").value;
                    var consAP = document.getElementById("consAP").value;
                    var consTal = document.getElementById("consTal").value;
                    var consDist = document.getElementById("consDist").value;
                    var consGstnAadhar = document.getElementById("consGstnAadhar").value;
                    var consState = document.getElementById("consState").value;
                    var consStateCode = document.getElementById("consStateCode").value;
//                  alert('MainPage_'+username);
//                  $(".loader").show();
                    alert(invNum);
                    alert(reverseCharge);
                    alert(modeOfTx);
                    $.ajax({
                        url: "Ajax/AddBillingDetailsAjax.jsp",
                        type: "post",
                        data: {
                            invNum : invNum, 
                            invDate : invDate, 
                            reverseCharge : reverseCharge, 
                            invState : invState, 
                            invStateCode : invStateCode, 
                            modeOfTx : modeOfTx, 
                            vehicleNum : vehicleNum, 
                            suppDate : suppDate, 
                            placeOfSupp : placeOfSupp, 
                            consName : consName, 
                            consAP : consAP, 
                            consTal : consTal, 
                            consDist : consDist, 
                            consGstnAadhar : consGstnAadhar, 
                            consState : consState, 
                            consStateCode : consStateCode 
                        },
                        complete: function(jqXHR, textStatus) {

                        },
//                    $(document).ajaxStart(function() {
//                        alert("Start");
//                    });
                        success: function(response) {
//                        alert('hi112')
//                        $(".loader").hide();
                            $("#form2").hide();
                            $("#form3").show();
                            
                        //$("#output").html(response);
                        },
                        error: function(jqXHR, textStatus, errorThrown) {
                            console.log(textStatus, errorThrown);
                            alert("Something Went Wrong...!!!");
                        }
                    });



                });
            });
    
            function showForm3(){
                
                document.getElementById("form2").style.display = "none";
                document.getElementById("form3").style.display = "block"; 
                
            }
            function showOldCust(){
                  $(document).ready(function() {
                    $('#tb2').DataTable();
                    } );
                }
            function showForm(){
               document.getElementById("form1").style.display = "block";
               document.getElementById("tb2").style.display = "none";
               $("#existing").hide();
               $("#new").hide();
           }
            function  showTb(){
              
              //window.location="SelectCustomer.jsp";
              document.getElementById("form1").style.display = "none";
              document.getElementById("tb2").style.display = "block";
              
                
            }
            function showForm2(){
                    alert('click');
                    var innumber = document.getElementById("innumber").value;
                    var cname = document.getElementById("cname").value;
                    var cmobile = document.getElementById("cmobile").value;
                    var cemail = document.getElementById("cemail").value;
                    var cap = document.getElementById("cap").value;
                    var ctal = document.getElementById("ctal").value;
                    var cdist = document.getElementById("cdist").value;
                    var cgstaadhar = document.getElementById("cgstaadhar").value;
                    var cstate = document.getElementById("cstate").value;
                    var cstcode = document.getElementById("cstcode").value;
//                  alert('MainPage_'+username);
//                  $(".loader").show();
                    alert(innumber);

                    $.ajax({
                        url: "Ajax/AddCustDetailsAjax.jsp",
                        type: "post",
                        data: {innumber: innumber, cname: cname, cmobile: cmobile, cemail: cemail, cap: cap, ctal: ctal, cdist: cdist, cgstaadhar: cgstaadhar, cstate: cstate, cstcode: cstcode },
                        complete: function(jqXHR, textStatus) {

                        },
//                    $(document).ajaxStart(function() {
//                        alert("Start");
//                    });
                        success: function(response) {
//                        alert('hi112')
//                        $(".loader").hide();
                            $("#form1").hide();
                            $("#form2").show();
                            
                        //$("#output").html(response);
                        },
                        error: function(jqXHR, textStatus, errorThrown) {
                            console.log(textStatus, errorThrown);
                            alert("Something Went Wrong...!!!");
                        }
                    });

                
                document.getElementById("form1").style.display = "none"; 
                document.getElementById("form2").style.display = "block";
               
                            
                        }
                        
             // cmobile innumber cemail cname cap ctal cdist cgstaadhar cstate cstcode           
//            $('#document').ready(function() {
////                    alert('click');
//                $('#btn1').click(function() {
////                    alert('click');
//                    var innumber = document.getElementById("innumber").value;
//                    alert(innumber);
//                    var cname = document.getElementById("cname").value;
//                    alert(cname);
//                    var cmobile = document.getElementById("cmobile").value;
//                    alert(cmobile);
//                    var cemail = document.getElementById("cemail").value;
//                    alert(cemail);
//                    var cap = document.getElementById("cap").value;
//                    alert(cap);
//                    var ctal = document.getElementById("ctal").value;
//                    alert(ctal);
//                    var cdist = document.getElementById("cdist").value;
//                    alert(cdist);
//                    var cgstaadhar = document.getElementById("cgstaadhar").value;
//                    alert(cgstaadhar);
//                    var cstate = document.getElementById("cstate").value;
//                    alert(cstate);
//                    var cstcode = document.getElementById("cstcode").value;
//                    alert(cstcode);
////                  alert('MainPage_'+username);
////                  $(".loader").show();
//                    alert(innumber);
//
//                    $.ajax({
//                        url: "Ajax/AddCustDetailsAjax.jsp",
//                        type: "post",
//                        data: {innumber: innumber, cname: cname, cmobile: cmobile, cemail: cemail, cap: cap, ctal: ctal, cdist: cdist, cgstaadhar: cgstaadhar, cstate: cstate, cstcode: cstcode },
//                        complete: function(jqXHR, textStatus) {
//
//                        },
////                    $(document).ajaxStart(function() {
////                        alert("Start");
////                    });
//                        success: function(response) {
////                        alert('hi112')
////                        $(".loader").hide();
//                            $("#form1").hide();
//                            $("#form2").show();
//                            
//                        //$("#output").html(response);
//                        },
//                        error: function(jqXHR, textStatus, errorThrown) {
//                            console.log(textStatus, errorThrown);
//                            alert("Something Went Wrong...!!!");
//                        }
//                    });
//
//
//
//                });
//            });
            
             
            $('#document').ready(function() {
  
            $('.getc').click(function() {
//                   alert('click');
                var username = this.id;
//                 alert('MainPage_'+username);
                $("#new").hide();
                $("#existing").hide();
                    //alert(username);

                $.ajax({
                    url: "Ajax/GetCustDetailsAjax.jsp",
                    type: "post",
                    data: {username: username},
                    complete: function(jqXHR, textStatus) {

                    },
//                    $(document).ajaxStart(function() {
//                        alert("Start");
//                    });
                    success: function(response) {
//                        alert('hi112')
//                        $(".loader").hide();
                        $("#tb2").hide();
                        $("#form1").show();
                        $("#output").html(response);
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                        console.log(textStatus, errorThrown);
                        alert("Something Went Wrong...!!!");
                    }
                });



            });
        });
        
            $('#document').ready(function() {
  
            $("#productselect").on('change', function (){
//                   alert('click');
                var username = $(this).find('option:selected').attr('value');
                 //alert('MainPage_'+username);
//                $(".loader").show();
                 //alert(username);

                $.ajax({
                    url: "Ajax/GetProductDetailsAjax.jsp",
                    type: "post",
                    data: {username: username},
                    complete: function(jqXHR, textStatus) {

                    },
//                    $(document).ajaxStart(function() {
//                        alert("Start");
//                    });
                    success: function(response) {
//                        alert('hi112')
//                        $(".loader").hide();
                        //$("#tb2").hide();
                        //$("#form1").show(); invNum pname prate quant amt disco
                        $("#output1").html(response);
                        var rate = $('#prate').val();
                        var cgst = $('#input-11').val();
                        var sgst = $('#input-12').val();
                        var igst = $('#input-13').val();
                        
                        var quant = $('#quant').val();
                        
                        var amt =  ((rate * quant) + (((rate * quant)* cgst/100  + (rate * quant)* sgst/100 + (rate * quant)* igst/100))).toFixed(2);
                        
                        $('#amt').val( amt );
                        $("#btn3").removeAttr("disabled");
                        
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                        console.log(textStatus, errorThrown);
                        alert("Something Went Wrong...!!!");
                    }
                    });


                });
            });
            
                function calc1(){
                        var rate = $('#prate').val();
                        var cgst = $('#input-11').val();
                        var sgst = $('#input-12').val();
                        var igst = $('#input-13').val();
                        
                        var quant = $('#quant').val();
                        var amt =  ((rate * quant) + (((rate * quant)* cgst/100  + (rate * quant)* sgst/100 + (rate * quant)* igst/100))).toFixed(2); 
                        $('#amt').val(amt);
                
                }
                function calc(){
                        var rate = $('#prate').val();
                        var cgst = $('#input-11').val();
                        var sgst = $('#input-12').val();
                        var igst = $('#input-13').val();
                        var disco = $('#disco').val();
                        var quant = $('#quant').val();
                        
                        var amt1 =  ((rate * quant) + (((rate * quant)* cgst/100  + (rate * quant)* sgst/100 + (rate * quant)* igst/100))).toFixed(2); 
                        
                        
                        var amt =  (amt1-(amt1 * disco/100)).toFixed(2); 
                        $('#amt').val(amt);
                
                }
//                var today = new Date();
//                var dd = String(today.getDate()).padStart(2, '0');
//                var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
//                var yyyy = today.getFullYear();
//
//                today = dd + '/' + mm + '/' + yyyy;
//                alert(today);
//                document.getElementById("invDate").setAttribute("value",today);
                var now = new Date();

                var day = ("0" + now.getDate()).slice(-2);
                var month = ("0" + (now.getMonth() + 1)).slice(-2);

                var today1 = now.getFullYear()+"-"+(month)+"-"+(day) ;

                $('#invDate').val(today1);
                $('#suppDate').val(today1);
                document.getElementById("invDate").setAttribute("min",today1);
                document.getElementById("suppDate").setAttribute("min",today1);
        </script>
        
    </body>
</html>
