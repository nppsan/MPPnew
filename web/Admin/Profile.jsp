
<%@page import="Com.Admin.Dao.AdminDao"%>
<%@page import="Com.Admin.Model.AdminModel"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from codervent.com/rocker/color-version/ui-nav-tabs.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:36:28 GMT -->
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <%@include file="Title.jsp" %>
        <%@include file="Css.jsp" %>

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


                <div class="container-fluid">


                    <h6 class="text-uppercase">Edit Profile</h6>

                    <div class="row">
                        <div class="col-lg-2"></div>
                        <div class="col-lg-8">
                            <div class="card">
                                <div class="card-body"> 
                                    <ul class="nav nav-tabs nav-tabs-info nav-justified">
                                        <li class="nav-item">
                                            <a class="nav-link active" data-toggle="tab" href="#tabe-13"> <span class="hidden-xs">Personal Details</span></a>
                                        </li>
                                        <!--                                        <li class="nav-item">
                                                                                    <a class="nav-link" data-toggle="tab" href="#tabe-14"><span class="hidden-xs">Bank Details</span></a>
                                                                                </li>
                                                                                 <li class="nav-item">
                                                                                    <a class="nav-link" data-toggle="tab" href="#tabe-16"><span class="hidden-xs">Other Payment </span></a>
                                                                                </li>-->
                                        <li class="nav-item">
                                            <a class="nav-link" data-toggle="tab" href="#tabe-15"><span class="hidden-xs">Change Password</span></a>
                                        </li>

                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div id="tabe-13" class="container tab-pane active">
                                            <%                                              //  MemberModel g = new MemberDao().getById(sidebarr.getId());
                                            %>
                                            <form id="form_validation" action="../UpdateProfileDetailsServlet"  method="POST">
                                                <!--<form id="form_validation" action="../../../FirstId" method="post">-->

                                                <input type="hidden" name="UserID" value="">
                                                <div class="row">
                                                    <div class="col-lg-6">
             <label for="personName" class="form-label">Name</label>
             <select class="form-control" id="select1" style="width: 100%; " name="Category"   required="required">
                            <option> </option>
                <%

                    List<AdminModel> s = new AdminDao().getAll();
                  //  AdminDao ad = new AdminDao();
                  //  AdminModel am = new AdminModel();
                    for (AdminModel p : s) 
                    {
                 
                %>

                <option   name="<%=p.getName()%>" value="<%=p.getId()%>"><%=p.getName()%></option>
                <%
                    }   
                %>              
                </select> 
                                                        <!--<input type="text"  autocomplete="off" required="" value="" class="form-control onlytext" name="personName" >-->
                   </div>
                <div class="col-lg-6">
                  <label for="designation"  class="form-label">Email </label>
                    <input id="email" type="text" autocomplete="off" value="" required="" class="form-control"  name="Email">
                    <input type="hidden" id="ctype" name="type" value="3487">
                    <input type="hidden" id="cid" name="type" value="3487">
                </div>

                </div>
                <div class="row">
                 <div class="col-lg-6">
                  <label for="personName" class="form-label">Mobile</label>
                   <input type="text" id="mobile" autocomplete="off" required="" value="" class="form-control" name="Mobile" >
                 </div>
                </div>


                                               




            <div class="form-group row float-right">
                                                    <!--                                                    <label for="input-1" class="col-sm-4 col-form-label"></label>-->
             <div class="col-sm-12 ">
              <button class="btn btn-gradient-scooter waves-effect waves-light m-1" type="submit">Update</button>
             </div>
            </div>
                                                <!--                                <button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>-->
            </form>
<!--                <script type = "text/javascript">
//                    $("#select1").on('change', function () {
//                                alert('Change Happened');
//                                var catid = $(this).find('option:selected').attr('value');
//                                var type = $(this).find('option:selected').attr('name');
//                                document.getElementById('ctype').setAttribute("value",type) ;
//                                document.getElementById('cid').setAttribute("value",catid) ;
//                                var option = $('option:selected', this).attr('value');
//                                
//                                catid = $("select1").find('option:selected').attr('value');
//                                type = $("select1").find('option:selected').attr('name');
//                                console.log(catid);
//                                console.log(type);
//                                
//                                alert(option);
//                                alert(catid);
//                                console.log(catid);
//                                alert(type);
//                                });
//                            ProductDao pd=new ProductDao();
                   
                   
//                            ProductModel pm = pd.getById(Long.parseLong(id));
                   
                                document.getElementsByTagName('select')[0].onchange = function() {
                                 var index = this.selectedIndex;
                                 var inputText = this.children[index].innerHTML.trim();
                                    console.log(inputText);
                                    var id = $(this).find('option:selected').attr('value');
                                    var name = $(this).find('option:selected').attr('name');
                                    document.getElementById('ctype').setAttribute("value", name) ;
                                    document.getElementById('cid').setAttribute("value", id) ;
                                    alert(id);
                                    alert(name);
                                    
                                    
                                    var mysql = require('mysql');
                                    var conn = mysql.createConnection({
                                          host: "localhost",
                                          user: "root",
                                          password: "root",
                                          database: "loanmlm"
                                    });
                                    conn.connect((err)=>{
                                    if (err) throw err;
  
                                    conn.query("SELECT * FROM adminmodel", (err, result, fields)=>{
                                        if (err) throw err;
                                            console.log(result);
                                                 });
                                         });
                                    
                                    var adminDaoObj= new Packages.Com.Admin.Dao.AdminDao();
                                    var adminModelObj = new Packages.Com.Admin.Model.AdminModel();
                                    adminModelObj = adminDaoObj.getById(Long.parseLong(id));
                                    document.getElementById('email').setAttribute("value", adminModelObj.getEmail());
                                    document.getElementById('mobile').setAttribute("value", adminModelObj.getMobile());
                                    alert(adminModelObj.getEmail());
                                    console.log(adminModelObj.getEmail());
                                };
//                           $(document.body).on('change','#select1',function(){
//                                // alert('Change Happened');
//                                 catid = $(this).find('option:selected').attr('value');
//                                type = $(this).find('option:selected').attr('name');
//                                document.getElementById('ctype').setAttribute("value",type) ;
//                                document.getElementById('cid').setAttribute("value",catid) ;
//                                alert($(this).find('option:selected').attr('value'));
//                                
//                                alert(type);
//                             });
                             
                </script>       -->
           </div>

                                     


                                        <div id="tabe-15" class="container tab-pane fade">
                                            <form id="form_validation" action="../ChangePassword1"  method="POST">
                                                <input type="hidden" name="UserID" value="">
                                                <!--<form id="form_validation" action="../../../FirstId" method="post">-->

                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <label for="personName" class="form-label">UserName</label>
                                                        <input type="text" autocomplete="off" required="" value="" placeholder="Reset" class="form-control" name="UserName">
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <label for="personName" class="form-label">Reset Password</label>
                                                        <input type="text" autocomplete="off" required="" value="" placeholder="Reset" class="form-control" name="Password">
                                                    </div>

                                                    <!--                                                    <div class="col-lg-6">
                                                    
                                                                                                            <label for="designation" class="form-label">Transaction Password</label>
                                                                                                            <input type="text" tocomplete="off"  required="" class="form-control"  name="TPassword">
                                                                                                        </div>-->

                                                </div>

                                                <div class="form-group row float-right">
                                                    <!--                                                    <label for="input-1" class="col-sm-4 col-form-label"></label>-->
                                                    <div class="col-sm-12 ">
                                                        <button class="btn btn-gradient-scooter waves-effect waves-light m-1" type="submit">Update</button>
                                                    </div>
                                                </div>



                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-lg-2"></div>
                    </div><!--End Row-->

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

<!--       <script>
            $(".onlytext").on("keyup", function() {
                var valid = /^[a-zA-Z\s-, ]+$/.test(this.value),
                        val = this.value;

                if (!valid) {


//         $('.Nameerrortext').show();
                    this.value = val.substring(0, val.length - 1);
                }
            });

        </script>-->
        <!-- Bootstrap core JavaScript-->
        <%@include file="Script.jsp" %>
    </body>

    <!-- Mirrored from codervent.com/rocker/color-version/ui-nav-tabs.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:36:28 GMT -->
</html>
