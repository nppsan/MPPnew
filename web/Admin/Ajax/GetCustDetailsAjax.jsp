
<%@page import="Com.Admin.Model.CustDetailsModel"%>
<%@page import="Com.Admin.Dao.CustDetailsDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("username");

    System.out.println("inajax" + id);
    
    CustDetailsDao cd = new CustDetailsDao();
    
    CustDetailsModel cm = cd.getById(Long.parseLong(id));
    
    

%>
 




<div class="card" style="width: 170%">
    <div class="card-body">
        <div class="card-title">CUSTOMER DETAILS</div>
	    <hr>
            <div class="form-group row">
                <label  class="col-sm-6 col-form-label">Personal Details</label>
            </div>
	    <div class="form-group row">
                
                <div class="col-sm-3">
                    <input name="cname" value="<%=cm.getCustName()%>" type="text" readonly="readonly" class="form-control" id="cname" placeholder="Name">
		</div>
                <div class="col-sm-3">
                    <input name="cemail" value="<%=cm.getEmail()%>" type="text" readonly="readonly" class="form-control" id="cemail" placeholder="Email">
		</div>
                <div class="col-sm-3">
                    <input type="text" value="<%=cm.getMobile()%>" name="cmobile" readonly="readonly" class="form-control" id="cmobile" placeholder="Mobile">
		</div>
            </div>
            <div class="form-group row">
                <label  class="col-sm-6 col-form-label">Address Details</label>
            </div>
            <div class="form-group row">
                <div class="col-sm-3">
                    <input type="text" name="cap" value="<%=cm.getAddrAP()%>" readonly="readonly" class="form-control" id="cap" placeholder="Address Line 1">
		</div>
                <div class="col-sm-3">
                    <input type="text" name="ctal" value="<%=cm.getAddrTal()%>" readonly="readonly" class="form-control" id="ctal" placeholder="Taluka">
		</div>
                <div class="col-sm-3">
                    <input type="text" name="cdist" value="<%=cm.getAddrDist()%>" readonly="readonly" class="form-control" id="cdist" placeholder="District">
		</div>
            </div>
            <div class="form-group row">
                <div class="col-sm-3">
                    <input type="text" name="cstate" value="<%=cm.getAddrState()%>" readonly="readonly" class="form-control" id="cstate" placeholder="State">
		</div>
                <div class="col-sm-3">
                    <input type="text" name="cstcode" value="<%=cm.getStateCode()%>" readonly="readonly" class="form-control" id="cstcode" placeholder="State Code">
		</div>
                <div class="col-sm-3">
                    <input name="cid" value="<%=cm.getId()%>" type="hidden" readonly="readonly" class="form-control" id="cid" placeholder="Name">
		</div>
            </div>
            <div class="form-group row">
                <label  class="col-sm-6 col-form-label">Identification Details</label>
            </div>
            <div class="form-group row">
                <div class="col-sm-3">
                    <input type="text" name="cgstaadhar" value="<%=cm.getGstnAadhar()%>" readonly="readonly" class="form-control" id="cgstaadhar" placeholder="GSTN/AADHAR">
		</div>
            </div>
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