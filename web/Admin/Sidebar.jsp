
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<script src="js/Alertajax.js" type="text/javascript"></script>

<%
//    MemberModel sidebarr1 = (MemberModel) session.getAttribute("Admin");
//    if (sidebarr1 == null) {
//        response.sendRedirect("Login.jsp");
//    } else {
%>
<div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true" style="top:60px">
    <div class="brand-logo" style="text-align: center">
        <!--<img src="../MyImg/ylogoN.png" style="background-color: white" alt="logo icon" width="210" height="60">-->
    </div>

    <ul class="sidebar-menu do-nicescrol">
        <li class="sidebar-header"></li>


<!--
        <li>
            <a href="#" class="waves-effect">
                <i class="icon-note"></i> <span>E-Pin</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="sidebar-submenu">
                <li><a href="GenerateEPin.jsp"><i class="fa fa-circle-o"></i>Purchase E-Pin</a></li>
                <li><a href="SendEPin.jsp"><i class="fa fa-circle-o"></i>Send E-Pin's</a></li>
            </ul>
        </li>-->
<!--        <li>
            <a href="#" class="waves-effect">
                <i class="icon-note"></i> <span>Wallet</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="sidebar-submenu">
                <li><a href="ViewPaymentRequest.jsp"><i class="fa fa-circle-o"></i>Payment Request</a></li>
                <li><a href="WithdrawReport.jsp"><i class="fa fa-circle-o"></i>Payout Report</a></li>
            </ul>
        </li>-->

   <li>
            <!--<a href="ViewEnquiry.jsp" class="waves-effect">-->
            <a href="AdminHome.jsp" class="waves-effect">
                <i class="icon-note"></i> <span>Dashboard</span> 
            </a>

        </li>
           <li>
            <!--<a href="ViewEnquiry.jsp" class="waves-effect">-->
            <a href="Profile.jsp" class="waves-effect">
                <i class="icon-note"></i> <span>Profile</span> 
            </a>

        </li>
<!--        <li>
            <a href="ViewEnquiry.jsp" class="waves-effect">
            <a href="#" class="waves-effect">
                <i class="icon-note"></i> <span>View Enquiry</span> 
            </a>

        </li>-->

<!--        <li>
             <a href="Register.jsp?userid=" class="waves-effect">
            <a href="Register.jsp" class="waves-effect">
                <i class="icon-note"></i> <span>Register</span> 
            </a>

        </li>-->
<!--        <li>
            <a href="EligibleUser.jsp" class="waves-effect">
                <i class="icon-note"></i> <span>Eligible User</span> 
            </a>
        </li>-->
        
        
        <li>
            <a href="Category.jsp" class="waves-effect">
                <i class="icon-note"></i> <span>Category</span>             
            </a>
        </li>
        
<!--        <li>    
                    <a href="ShowCategory.jsp" class="waves-effect">
                        <i class="icon-note"></i> <span>Show Categories</span>
                    </a>
                
        </li>-->
        
        <li>    
                    <a href="AddProduct.jsp" class="waves-effect">
                <i class="icon-note"></i> <span>Product</span>
                    </a>
                
        </li>
<!--        <li>    
                    <a href="ShowProduct.jsp" class="waves-effect">
                <i class="icon-note"></i> <span>Show Products</span>
                    </a>
                
        </li>-->
        
          <li>
            <a href="Bill.jsp" class="waves-effect">
                <i class="icon-note"></i> <span>Bill</span> 
            </a></li>
             <li>
            <a href="../AdminLogoutServlet" class="waves-effect">
                <i class="icon-note"></i> <span>Logout</span> 
            </a></li>
<!--        <li>
            <a href="RewardAchievers.jsp" class="waves-effect">
                <i class="icon-note"></i> <span>Reward Achievers</span> 
            </a>

        </li>

        <li>
            <a href="ImagicaReport.jsp" class="waves-effect">
                <i class="icon-note"></i> <span> Imagica Report</span> 
            </a>

        </li>-->
<!--        <li>
            <a href="#" class="waves-effect">
                <i class="icon-note"></i> <span>Report</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="sidebar-submenu">
                <li><a href="RoyaltyAReport.jsp"><i class="fa fa-circle-o"></i>Royalty Acheivers Report</a></li>
                <li><a href="SendEPin.jsp"><i class="fa fa-circle-o"></i>Send E-Pin's</a></li>
            </ul>
        </li>-->
        

    </ul>

</div>
<%
//    }
%>
