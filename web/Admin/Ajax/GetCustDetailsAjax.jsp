
<%@page import="Com.Admin.Model.CustDetailsModel"%>
<%@page import="Com.Admin.Dao.CustDetailsDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("username");

    System.out.println("inajax" + id);
    
    CustDetailsDao cd = new CustDetailsDao();
    
    CustDetailsModel cm = cd.getById(Long.parseLong(id));
    
    

%>


<div class="card">
    <div class="card-body">
       <div class="card-title">CUSTOMER DETAILS</div>
       <hr>
				    <!--<form>
            //  innumber        
                                    -->
	<div class="form-group row">
	  <label for="input-4" class="col-sm-2 col-form-label">Name</label>
	  <div class="col-sm-10">
        	<input name="cname" type="text" value="<%=cm.getCustName()%>" class="form-control" id="cname" placeholder="Enter Customer Name">
	  </div>
	</div>
	<div class="form-group row">
	  <label for="input-5" class="col-sm-2 col-form-label">Email</label>
	  <div class="col-sm-10">
              <input name="cemail" type="text" value="<%=cm.getEmail()%>" class="form-control" id="cemail" placeholder="Enter Customer Email Address">
	  </div>
	</div>
	<div class="form-group row">
	  <label for="input-6" class="col-sm-2 col-form-label">Mobile</label>
	  <div class="col-sm-10">
		<input type="text" name="cmobile" value="<%=cm.getMobile()%>" class="form-control" id="cmobile" placeholder="Enter Mobile Number">
	  </div>
	</div>
	<div class="form-group row">
	  <label for="input-4" class="col-sm-2 col-form-label">Customer's A/P</label>
	  <div class="col-sm-10">
            <input type="text" name="cap" value="<%=cm.getAddrAP()%>" class="form-control" id="cap" placeholder="Enter Customer At Post">
	  </div>
	</div>
        <div class="form-group row">
	  <label for="input-4" class="col-sm-2 col-form-label">Customer's Taluka</label>
	  <div class="col-sm-10">
		<input type="text" name="ctal" value="<%=cm.getAddrTal()%>" class="form-control" id="ctal" placeholder="Enter Customer Taluka">
	  </div>
	</div>
        <div class="form-group row">
	  <label for="input-4" class="col-sm-2 col-form-label">Customer's District</label>
	  <div class="col-sm-10">
		<input type="text" name="cdist" value="<%=cm.getAddrDist()%>" class="form-control" id="cdist" placeholder="Enter Customer District">
	  </div>
	</div>
        <div class="form-group row">
	  <label for="input-4" class="col-sm-2 col-form-label">Customer's GSTN/AADHAR Number</label>
	  <div class="col-sm-10">
		<input type="text" name="cgstaadhar" value="<%=cm.getGstnAadhar()%>" class="form-control" id="cgstaadhar" placeholder="Enter Customer GSTN/AADHAR">
	  </div>
	</div>
        <div class="form-group row">
	  <label for="input-4" class="col-sm-2 col-form-label">State</label>
	  <div class="col-sm-10">
		<input type="text" name="cstate" value="<%=cm.getAddrState()%>" class="form-control" id="cstate" placeholder="Enter Customer State">
	  </div>
	</div>
        <div class="form-group row">
	  <label for="input-4" class="col-sm-2 col-form-label">State Code</label>
	  <div class="col-sm-10">
		<input type="text" name="cstcode" value="<%=cm.getStateCode()%>" class="form-control" id="cstcode" placeholder="Enter Customer State Code">
	  </div>
	</div>
<!--	<div class="form-group row">
	  <label for="input-1" class="col-sm-2 col-form-label"></label>
	  <div class="col-sm-10">
		<button type="button" id="btn1" onclick="showhowForm2()" class="btn btn1 btn-primary shadow-primary px-5"><i class="icon-lock"></i> SAVE & NEXT</button>
	  </div>
	</div>-->
	<!--</form>-->
	</div>
</div>
          <script>
//              $('#document').ready(function() {
//  
//                $('#btn1').click(function() {
////                   alert('click');
//                    var innumber = document.getElementById("innumber").value;
//                    var cname = document.getElementById("cname").value;
//                    var cmobile = document.getElementById("cmobile").value;
//                    var cemail = document.getElementById("cemail").value;
//                    var cap = document.getElementById("cap").value;
//                    var ctal = document.getElementById("ctal").value;
//                    var cdist = document.getElementById("cdist").value;
//                    var cgstaadhar = document.getElementById("cgstaadhar").value;
//                    var cstate = document.getElementById("cstate").value;
//                    var cstcode = document.getElementById("cstcode").value;
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
          </script>